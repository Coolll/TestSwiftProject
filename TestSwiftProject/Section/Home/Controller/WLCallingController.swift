//
//  WLCallingController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/10/2.
//

import UIKit
import AudioToolbox
import AVFAudio
import AVFoundation

class WLCallingController: BaseViewController {
    var bgImageView: UIImageView = UIImageView()
    var nameLabel: UILabel = UILabel()
    var groupLabel: UILabel = UILabel()
    var addressLabel: UILabel = UILabel()
    
    var callingModel: WLCallingModel?
    var audioPlayer: AVPlayer?
    
    override func viewDidLoad() {
        self.needHideNavi = true
        super.viewDidLoad()
        loadCustomView()
        loadCustomData()
        configureCallingItem()
    }
    
    func loadCustomData() {
        self.nameLabel.text = "培培"
        self.addressLabel.text = "家人"
    }
    
    func configureCallingItem() {
        shakePhone()
        ringPhone()
    }
    func ringPhone() {
        let ringName: String? = callingModel?.ringFileName ?? "music"
        
        let filePath = Bundle.main.path(forResource: ringName, ofType: ".mp3")
        guard let filePathString = filePath else { return }
        let fileURL = URL(fileURLWithPath: filePathString)
        let playerItem = AVPlayerItem.init(url: fileURL)
        if audioPlayer == nil {
            audioPlayer = AVPlayer.init(playerItem: playerItem)
            playerItem.addObserver(self, forKeyPath: "status", options: .new, context: nil)
            
            NotificationCenter.default.addObserver(self, selector: #selector(finishPlay), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: playerItem)
        }
        audioPlayer?.replaceCurrentItem(with: playerItem)
        audioPlayer?.play()

        
    }
    
    @objc
    func finishPlay() {
        ringPhone()
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "status" {
            var status = change?[.newKey]
            
        }
    }
    
    func shakePhone() {
        let shakeId = SystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(shakeId)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    

   
}

extension WLCallingController {
    func loadCustomView() {
        bgImageView.frame = CGRect(x: 0, y: 0, width: Constants.ScreenWidth, height: Constants.ScreenHeight)
        view.addSubview(bgImageView)
        bgImageView.image = UIImage.init(named: "wallpaper_iOS_13")
        bgImageView.contentMode = .scaleAspectFill
        bgImageView.clipsToBounds = true

        let effectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        effectView.frame = CGRect(x: 0, y: 0, width: Constants.ScreenWidth, height: Constants.ScreenHeight)
        view.addSubview(effectView)
        
        nameLabel.frame = CGRect(x: 16, y: loadNaviHeight() + 54.0, width: Constants.ScreenWidth - 32.0, height: 40.0)
        nameLabel.font = UIFont.Custom.hl_medium
        nameLabel.textColor = UIColor.Custom.grey6
        nameLabel.textAlignment = .center
        view.addSubview(nameLabel)
        
        addressLabel.frame = CGRect(x: 16, y: nameLabel.bottom + 8.0, width: nameLabel.width, height: 20)
        addressLabel.font = UIFont.Custom.h4_regular
        addressLabel.textColor = UIColor.Custom.grey3
        addressLabel.textAlignment = .center
        view.addSubview(addressLabel)
        
        groupLabel.frame = CGRect(x: 16, y: addressLabel.bottom + 8.0, width: nameLabel.width, height: 20)
        groupLabel.font = UIFont.Custom.h4_regular
        groupLabel.textColor = UIColor.Custom.grey3
        groupLabel.textAlignment = .center
        view.addSubview(groupLabel)
        
        let rate: CGFloat = 88.0/428.0
        let imageSpace: CGFloat = Constants.ScreenWidth * rate
        let imageW: CGFloat = 24
        
        let remindImageV = UIImageView()
        remindImageV.frame = CGRect(x: imageSpace, y: Constants.ScreenHeight - 318.0, width: imageW, height: imageW)
        let image = UIImage.init(named: "calling_remind")
        remindImageV.image = image?.withRenderingMode(.alwaysTemplate)
        remindImageV.tintColor = UIColor.Custom.grey6
        remindImageV.contentMode = .scaleAspectFit
        view.addSubview(remindImageV)


        let remindW: CGFloat = 120
        let remindLabel = UILabel()
        remindLabel.frame = CGRect(x: (imageSpace + imageW/2 - remindW/2), y: remindImageV.bottom + 8.0, width: remindW, height: 20)
        remindLabel.textColor = UIColor.Custom.grey6
        remindLabel.textAlignment = .center
        remindLabel.text = String.globalString("calling_remind_me")
        remindLabel.font = UIFont.Custom.h5_regular
        view.addSubview(remindLabel)
        
        
        let messageImageV = UIImageView()
        messageImageV.frame = CGRect(x: Constants.ScreenWidth - imageSpace - imageW, y: Constants.ScreenHeight - 318.0, width: imageW, height: imageW)
        let messageImage = UIImage.init(named: "calling_message")
        messageImageV.image = messageImage?.withRenderingMode(.alwaysTemplate)
        messageImageV.contentMode = .scaleAspectFit
        messageImageV.tintColor = UIColor.Custom.grey6
        view.addSubview(messageImageV)

        let messageLabel = UILabel()
        messageLabel.frame = CGRect(x: Constants.ScreenWidth - (imageSpace + imageW/2 + remindW/2), y: messageImageV.bottom + 8.0, width: remindW, height: 20)
        messageLabel.textColor = UIColor.Custom.grey6
        messageLabel.textAlignment = .center
        messageLabel.text = String.globalString("calling_message")
        messageLabel.font = UIFont.Custom.h5_regular
        view.addSubview(messageLabel)
        
        let btnW: CGFloat = 86.0
        let declineBtn = UIButton.init(type: .custom)
        declineBtn.frame = CGRect(x: (imageSpace + imageW/2 - btnW/2), y: remindLabel.bottom + 60.0, width: btnW, height: btnW)
        declineBtn.clipsToBounds = true
        declineBtn.backgroundColor = UIColor.customColor("251,63,56")
        declineBtn.layer.cornerRadius = btnW / 2.0
        view.addSubview(declineBtn)
        
        let declineImageV = UIImageView()
        let declineImage = UIImage.init(named: "calling_decline")
        declineImageV.image = declineImage?.withRenderingMode(.alwaysTemplate)
        declineImageV.contentMode = .scaleAspectFit
        declineImageV.tintColor = UIColor.Custom.grey6
        let iconSpace: CGFloat = 20.0
        declineImageV.frame = CGRect(x: iconSpace, y: iconSpace, width: btnW - iconSpace*2.0, height: btnW - iconSpace * 2.0)
        declineBtn.addSubview(declineImageV)
        
        let declineLabel: UILabel = UILabel()
        declineLabel.frame =  CGRect(x: (imageSpace + imageW/2 - remindW/2), y: declineBtn.bottom + 8.0, width: remindW, height: 20)
        declineLabel.textColor = UIColor.Custom.grey6
        declineLabel.textAlignment = .center
        declineLabel.text = String.globalString("calling_decline")
        declineLabel.font = UIFont.Custom.h5_regular
        view.addSubview(declineLabel)

        
        let acceptBtn = UIButton.init(type: .custom)
        acceptBtn.frame = CGRect(x: Constants.ScreenWidth - (imageSpace + imageW/2 + btnW/2), y: remindLabel.bottom + 60.0, width: btnW, height: btnW)
        acceptBtn.clipsToBounds = true
        acceptBtn.backgroundColor = UIColor.customColor("60,198,94")
        acceptBtn.layer.cornerRadius = btnW / 2.0
        view.addSubview(acceptBtn)
        
        let acceptImageV = UIImageView()
        let acceptImage = UIImage.init(named: "calling_decline")
        acceptImageV.image = acceptImage?.withRenderingMode(.alwaysTemplate)
        acceptImageV.tintColor = UIColor.Custom.grey6
        acceptImageV.contentMode = .scaleAspectFit
        acceptImageV.frame = CGRect(x: iconSpace, y: iconSpace, width: btnW - iconSpace*2.0, height: btnW - iconSpace * 2.0)
        acceptImageV.transform = acceptImageV.transform.rotated(by: CGFloat(-Double.pi)*0.75)
        acceptBtn.addSubview(acceptImageV)

        let acceptLabel = UILabel()
        acceptLabel.frame = CGRect(x: Constants.ScreenWidth - (imageSpace + imageW/2 + remindW/2), y: declineBtn.bottom + 8.0, width: remindW, height: 20)
        acceptLabel.textColor = UIColor.Custom.grey6
        acceptLabel.textAlignment = .center
        acceptLabel.text = String.globalString("calling_accept")
        acceptLabel.font = UIFont.Custom.h5_regular
        view.addSubview(acceptLabel)

        
    }
    
    
    
    
    
}
