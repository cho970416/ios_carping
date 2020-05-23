//
//  SplashViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainTabvc = MainTabViewController() //change this to your class name
        mainTabvc.modalPresentationStyle = .fullScreen

//        UIApplication.shared.delegate?.window!!.rootViewController?.present(mainTabvc, animated: true, completion: nil)

        self.present(mainTabvc, animated: true, completion: nil)
        // Do any additional setup after loading the view.
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
