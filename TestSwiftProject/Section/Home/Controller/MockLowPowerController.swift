//
//  MockLowPowerController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class MockLowPowerController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        titleForNavi = String.globalString("mock_low_power")
        view.backgroundColor = UIColor.Custom.grey3

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
