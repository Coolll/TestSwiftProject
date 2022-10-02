//
//  WLHomeCollectionViewCell.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class WLHomeCollectionViewCell: UICollectionViewCell {
    var data: HomeItemModel?
    var iconImageView: UIImageView?
    var titleLabel: UILabel?
    
    func loadCustomView() {
        
        if iconImageView == nil {
            let itemW: CGFloat = (Constants.ScreenWidth - 24) / 2.0
            let imageW: CGFloat = 20.0
            let titleH: CGFloat = 20.0
            let space: CGFloat = 4.0
            
            let imageX: CGFloat = (itemW - imageW) / 2.0
            let imageY: CGFloat = (itemW - imageW - space - titleH) / 2.0
            iconImageView = UIImageView.init()
            iconImageView?.frame = CGRect(x: imageX, y: imageY, width: imageW, height: imageW)
            self.contentView.addSubview(iconImageView!)
            
            
            titleLabel = UILabel.init()
            titleLabel?.frame = CGRect(x: 0, y: iconImageView!.bottom + space, width: itemW, height: 20)
            titleLabel?.textAlignment = .center
            titleLabel?.textColor = UIColor.Custom.grey0
            titleLabel?.font = UIFont.Custom.h3_medium
            self.contentView.addSubview(titleLabel!)
        }
        
        
        
        if let model = data {
            contentView.backgroundColor = model.backgroundColor
            iconImageView?.image = UIImage.init(named: model.iconName)
            titleLabel?.text = model.title
        }
    }
}
