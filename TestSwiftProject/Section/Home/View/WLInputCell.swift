//
//  WLInputCell.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class WLInputCell: UITableViewCell {
    var icon: UIImageView?
    var titleLabel: UILabel?
    var inputTextField: UITextField?
    var data: WLInputModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadCustomView() {
        if icon == nil {
            let line = UIView.init()
            line.frame = CGRect(x: 0, y: 0, width: Constants.ScreenWidth, height: 0.5)
            line.backgroundColor = UIColor.Custom.grey4
            self.contentView.addSubview(line)

            icon = UIImageView.init()
            icon?.frame = CGRect(x: 16, y: 16, width: 20, height: 20)
            self.contentView.addSubview(icon!)
            
            titleLabel = UILabel.init()
            titleLabel?.frame = CGRect(x: icon!.right + 4.0, y: 16, width: 250, height: 20)
            titleLabel?.font = UIFont.Custom.h4_regular
            self.contentView.addSubview(titleLabel!)
            
            
            inputTextField = UITextField.init()
            inputTextField?.frame = CGRect(x: 16, y: titleLabel!.bottom + 12.0, width: Constants.ScreenWidth - 32.0, height: 24.0)
            self.contentView.addSubview(inputTextField!)
            
        }
        
        if let model = data {
            icon?.image = UIImage.init(named: model.iconName)
            titleLabel?.text = model.title
            inputTextField?.placeholder = model.placeHolderStr
            inputTextField?.text = model.inputContent
            if model.inputType == .phoneNumber {
                inputTextField?.keyboardType = .phonePad
            } else {
                inputTextField?.keyboardType = .default
            }
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
