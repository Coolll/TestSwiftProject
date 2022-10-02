//
//  MockMessageViewController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class MockMessageController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        titleForNavi = String.globalString("mock_message")
        view.backgroundColor = UIColor.Custom.orange
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
