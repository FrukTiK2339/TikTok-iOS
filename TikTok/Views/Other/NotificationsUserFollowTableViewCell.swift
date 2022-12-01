//
//  NotificationsUserFollowTableViewCell.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 01.12.2022.
//

import UIKit

class NotificationsUserFollowTableViewCell: UITableViewCell {
    static let identifier = "NotificationsUserFollowTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    
}
