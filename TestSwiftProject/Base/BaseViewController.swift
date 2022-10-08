//
//  BaseViewController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/20.
//

import UIKit

class BaseViewController: UIViewController {
    var offsetY = CGFloat(0)
    var offsetX = CGFloat(0)

    var needHideNavi = false
    var customNaviBar: UIView?
    var customTitle: UILabel?
    var backBtn: UIButton?
    var backImage: UIImageView?
    var leftBarView: UIView?
    var rightBarView: UIView?
    var isPresentNavi = false
    var sendNaviBarToBackend = false
    let effectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    private var currentModeColor: UIColor?
    var curModeColor: UIColor {
        get {
            if let modeColor = self.currentModeColor  {
                return modeColor
            }
            self.currentModeColor = publicCurrentModeColor()
            return publicCurrentModeColor()
        }
    }
    
    var titleForNavi: String? = "" {
        didSet {
            customTitle?.text = titleForNavi ?? ""
        }
    }
   

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        self.hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.Custom.backgroundColor
        if !needHideNavi {
            self.configureCustomNavigationBar()
        }
        self.setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if customNaviBar != nil {
            if self.sendNaviBarToBackend {
                return
            }
            self.view.bringSubviewToFront(customNaviBar!)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if customNaviBar != nil {
            if self.sendNaviBarToBackend {
                return
            }
            self.view.bringSubviewToFront(customNaviBar!)
        }
    }

    func setLeftBarView(leftView: UIView) {
        if customNaviBar != nil {
            if leftView.frame.size.width == 0 {
                leftView.frame = CGRect(x: 16, y: self.loadNaviHeight() - 36, width: 28, height: 28)
            }
            self.customNaviBar?.addSubview(leftView)
            //设置了左侧bar，那么需要调整一下title的frame
            let titleX = leftView.right + 8 //从barView右侧8像素开始
            let titleY = customTitle?.frame.origin.y ?? customNaviBar!.height - 34 //y
            let titleW = Constants.ScreenWidth - titleX * 2 //宽度是为了label居中
            let titleH = customTitle?.height ?? 24 //高度
            customTitle?.frame = CGRect(x: titleX, y:titleY , width: titleW, height: titleH )

            let tap = UITapGestureRecognizer(target: self, action: #selector(leftBarItemAction))
            leftView.addGestureRecognizer(tap)
            leftView.isUserInteractionEnabled = true
        }
    }

    func setRightBarView(rightView: UIView) {
        if customNaviBar != nil {
            if rightView.frame.size.width == 0 {
                rightView.frame = CGRect(x: Constants.ScreenWidth - 48, y: self.loadNaviHeight() - 42, width: 40, height: 40)
            }
            self.customNaviBar?.addSubview(rightView)
            //右侧设置了barView
            let titleX = customTitle?.x ?? 40 //x不变化
            let titleY = customTitle?.frame.origin.y ?? customNaviBar!.height - 34 //y不变化
            let titleW = rightView.x - titleX //宽度为右侧barView开始位置 - 标题开始的位置
            let titleH = customTitle?.height ?? 24 //高度不变化
            customTitle?.frame = CGRect(x: titleX, y:titleY , width: titleW, height: titleH )

            let tap = UITapGestureRecognizer(target: self, action: #selector(rightBarItemAction))
            rightView.addGestureRecognizer(tap)
            rightView.isUserInteractionEnabled = true
        }
    }

    @objc func leftBarItemAction() {
    }

    @objc func rightBarItemAction() {
    }

    func configureCustomNavigationBar() {
        if customNaviBar == nil {
//            customNaviBar = UIView.init(frame: CGRect(x: 0, y: -self.loadNaviHeight()+(curBar?.frame.size.height ?? 44), width: Constants.ScreenWidth, height: self.loadNaviHeight()))
           createNaviBar()
        }

        if self.navigationController?.viewControllers.count ?? 0 > 1 {
            self.configureBackItem()
        }
    }
    
    func createNaviBar() {
        var barH: CGFloat = 0
        if self.isPresentNavi {
            barH = 54.0
        } else {
            barH = self.loadNaviHeight()
        }
        self.navigationController?.navigationBar.isHidden = true
        customNaviBar = UIView(frame: CGRect(x: 0, y: 0, width: Constants.ScreenWidth, height: barH))

        self.view?.addSubview(customNaviBar!)
//            curBar?.backgroundColor = .clear
        customNaviBar!.backgroundColor = UIColor.Custom.grey6

        effectView.frame = CGRect(x: 0, y: 0, width: Constants.ScreenWidth, height: barH)
        customNaviBar?.addSubview(effectView)

        customTitle = UILabel(frame: CGRect(x: 40, y: customNaviBar!.height - 34, width: Constants.ScreenWidth - 80, height: 24))
        customTitle?.font = UIFont.Custom.h2_medium
        customTitle?.textColor = UIColor.Custom.grey0
        customTitle?.textAlignment = .center
        customNaviBar?.addSubview(customTitle!)
    }
    
    func configureBackItem() {
        if customNaviBar == nil {
            createNaviBar()
        }
        backBtn = UIButton(type: .custom)
        backBtn?.frame = CGRect(x: 0, y: 0, width: 42, height: customNaviBar!.height)
        backBtn?.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        customNaviBar?.addSubview(backBtn!)

        backImage = UIImageView()
        backImage?.frame = CGRect(x: 16, y: customNaviBar!.height - 24 - 10, width: 24, height: 24)
        backImage?.tintColor = UIColor.Custom.grey0
        backImage?.image = UIImage.init(named: "navigate_backword")
        customNaviBar?.addSubview(backImage!)
    }

    func setNaviColor(color: UIColor?) {
        if color == nil {
            customNaviBar?.backgroundColor = UIColor.Custom.grey6
        } else {
            customNaviBar?.backgroundColor = color
        }
    }

    func loadNaviHeight() -> CGFloat {
        let safeArea: CGFloat = UIApplication.shared.windows.last?.safeAreaInsets.top ?? 0

        if needHideNavi {
            if safeArea < 20 {
                return 20
            }
            return safeArea
        }
        if isPresentNavi {
            return 54
        }
        if safeArea < 20 {
            return 20 + 44
        }
        return safeArea + 44
    }


    func setup() {
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @objc func backButtonClick() {
        self.navigationController?.popViewController(animated: true)
    }

    deinit {
        Log("ViewController deinit")
    }
}

