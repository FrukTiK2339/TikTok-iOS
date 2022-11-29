//
//  CaptionViewController.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 29.11.2022.
//

import Foundation
import UIKit

class CaptionViewController: UIViewController {
    
    let videoURL: URL
    
    init(videoURL: URL) {
        self.videoURL = videoURL
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Caption"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Post", style: .done, target: self, action: #selector(didTapPost))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @objc private func didTapPost() {
        //Generate video
        let newVideoName = StorageManager.shared.generateVideoName()
        
        //Upload video
        StorageManager.shared.uploadVideo(from: videoURL, filename: newVideoName) { [weak self] success in
            if success {
                DispatchQueue.main.async {
                    //Update database
                    DatabaseManager.shared.insertPost(fileName: newVideoName) { databaseUpdated in
                        if databaseUpdated {
                            self?.navigationController?.popToRootViewController(animated: true)
                            self?.tabBarController?.selectedIndex = 0
                            self?.tabBarController?.tabBar.isHidden = false
                        } else {
                            let alert = UIAlertController(title: "Woops", message: "Could not upload video. Try again", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
                            self?.present(alert, animated: true)
                        }
                    }
                    
                    // Reset camera
                }
                
            } else {
                let alert = UIAlertController(title: "Woops", message: "Could not upload video. Try again", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
                self?.present(alert, animated: true)
                
                
            }
        }
        

        
    }
    
}
