//
//  HomeViewController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/20.
//

import UIKit

class HomeViewController: BaseViewController {
    
    var homeImageView: UIImageView = UIImageView()
    var viewModel: HomeViewModel = HomeViewModel()
    var itemArray: [HomeItemModel] = []
    var mainCollectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleForNavi = String.globalString("home_title")
        
//        view.backgroundColor = curModeColor
        view.backgroundColor = .white
        loadCustomData()
        loadCustomView()

    }
    
    func loadCustomData() {
        self.itemArray = viewModel.loadHomeItems()
    }
    
    func loadCustomView() {
        
        if mainCollectionView == nil {
            let itemW: CGFloat = (Constants.ScreenWidth - 24) / 2.0
            let layout = UICollectionViewFlowLayout.init()
            layout.scrollDirection = .vertical
            layout.itemSize = CGSize(width: itemW, height: itemW)
            layout.minimumLineSpacing = 8.0
            layout.minimumInteritemSpacing = 8.0
            layout.sectionInset = UIEdgeInsets.init(top: 8, left: 8, bottom: 20, right: 8)
            
            mainCollectionView = UICollectionView.init(frame: CGRect(x: 0, y: loadNaviHeight(), width: Constants.ScreenWidth, height: Constants.ScreenHeight - loadNaviHeight()), collectionViewLayout: layout)
            mainCollectionView?.delegate = self
            mainCollectionView?.dataSource = self
            mainCollectionView?.backgroundColor = UIColor.Custom.grey6
            mainCollectionView?.register(WLHomeCollectionViewCell.self, forCellWithReuseIdentifier: "WLHomeCollectionViewCell")
            self.view.addSubview(mainCollectionView!)
            
        }
    }
    
    
    func loadHomeImage() {
        homeImageView.frame = view.bounds
        view.addSubview(homeImageView)
        
        homeImageView.image = UIImage.init(named: "wallpaper_iOS_13")
        homeImageView.contentMode = .scaleAspectFill
    }
    

   

}





extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WLHomeCollectionViewCell", for: indexPath) as! WLHomeCollectionViewCell
        if indexPath.row < itemArray.count {
            let model = itemArray[indexPath.row]
            cell.data = model
            cell.loadCustomView()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < itemArray.count {
            let model = itemArray[indexPath.row]
            let type = model.type
            if type == .Calling {
                let vc = MockCallingController.init()
                self.navigationController?.pushViewController(vc)
            } else if type == .Message {
                let vc = MockMessageController.init()
                self.navigationController?.pushViewController(vc)
            } else if type == .LowPower {
                let vc = MockLowPowerController.init()
                self.navigationController?.pushViewController(vc)
            }
            
            
            
            
        }
    }

    
    
}
