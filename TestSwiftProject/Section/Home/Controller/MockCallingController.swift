//
//  MockCallingViewController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class MockCallingController: BaseViewController {
    var mainTableView: UITableView = UITableView.init(frame: .zero, style: .grouped)
    var dataArray: [WLInputModel] = []
    let viewModel: WLCallingViewModel = WLCallingViewModel.init()
    var bottomButton: UIButton = UIButton.init(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleForNavi = String.globalString("mock_calling")
        view.backgroundColor = UIColor.Custom.grey6
        loadCustomData()
        loadCustomView()
        
    }
    
    func loadCustomData() {
        dataArray = viewModel.configureItems()
    }
    
    func loadCustomView() {
        let bottomH: CGFloat = 60.0
        let bottomSpace: CGFloat = 24.0
        bottomButton.frame = CGRect(x: 16, y: Constants.ScreenHeight - bottomH - bottomSpace, width: Constants.ScreenWidth - 32.0, height: bottomH)
        bottomButton.backgroundColor = UIColor.Custom.blue_light1
        bottomButton.setTitle(String.globalString("public_done"), for: .normal)
        bottomButton.layer.cornerRadius = 8.0
        bottomButton.clipsToBounds = true
        bottomButton.addTarget(self, action: #selector(goToCallingView(sender:)), for: .touchUpInside)
        view.addSubview(bottomButton)
        
        mainTableView.frame = CGRect(x: 0, y: loadNaviHeight(), width: Constants.ScreenWidth, height: Constants.ScreenHeight - loadNaviHeight() - bottomH - bottomSpace)
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(WLInputCell.self, forCellReuseIdentifier: "WLInputCell")
        mainTableView.separatorStyle = .none
        mainTableView.estimatedSectionHeaderHeight = 0
        mainTableView.estimatedSectionFooterHeight = 0
        mainTableView.estimatedRowHeight = 88.0
        view.addSubview(mainTableView)
    }
    
    @objc
    func goToCallingView(sender: UIButton) {
        let vc = WLCallingController()
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

extension MockCallingController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: WLInputCell = tableView.dequeueReusableCell(withIdentifier: "WLInputCell") as? WLInputCell ?? WLInputCell()
        cell.selectionStyle = .none
        if indexPath.row < dataArray.count {
            if let data = dataArray[indexPath.row] as? WLInputModel {
                cell.data = data
                cell.loadCustomView()
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        endEditing()
    }
    
    
    
}
