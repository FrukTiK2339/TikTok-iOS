//
//  ProfileViewController.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 09.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let user: User
    
    private let logOutButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .gray
        button.tintColor = .black
        button.setTitle("Log Out", for: .normal)
        return button
    }()

    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = user.username.uppercased()
        view.backgroundColor = .systemBackground
        setupLogOutButton()
    }
    
    private func setupLogOutButton() {
        view.addSubview(logOutButton)
        logOutButton.frame = CGRect(x: 0, y: 0, width: 120, height: 60)
        logOutButton.center = view.center
        logOutButton.addTarget(self, action: #selector(didTapLogOutBtn), for: .touchUpInside)
    }
    
    @objc private func didTapLogOutBtn() {
        let alert = UIAlertController(title: "Log Out", message: "Do you want to log out?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak self] _ in
            self?.logOut()
        }))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
        present(alert, animated: true)
    }
    
    private func logOut() {
        AuthManager.shared.signOut { _ in
            let vc = SignInViewController()
            let navVc = UINavigationController(rootViewController: vc)
            navVc.modalPresentationStyle = .fullScreen
            present(navVc, animated: true, completion: nil)
        }
    }

}
