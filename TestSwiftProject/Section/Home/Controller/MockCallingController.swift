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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleForNavi = String.globalString("mock_calling")
        view.backgroundColor = UIColor.Custom.blue
    }
    
    func loadCustomData() {
        dataArray = viewModel.configureItems()
    }
    func loadCustomView() {
        mainTableView.frame = CGRect(x: 0, y: loadNaviHeight(), width: Constants.ScreenWidth, height: Constants.ScreenHeight - loadNaviHeight())
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(WLInputCell.self, forCellReuseIdentifier: "WLInputCell")
        
    }
    
    


}

extension MockCallingController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: WLInputCell = tableView.dequeueReusableCell(withIdentifier: "WLInputCell") as? WLInputCell ?? WLInputCell()
        
        
        return cell
    }
    
    
}
