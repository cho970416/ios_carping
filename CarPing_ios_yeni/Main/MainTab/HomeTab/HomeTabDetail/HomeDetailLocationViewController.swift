//
//  HomeDetailLocationViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class HomeDetailLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func presentHomeVC(_ sender: UIButton) {
        let MainHomevc = MainTabViewController() //change this to your class name
        MainHomevc.modalPresentationStyle = .fullScreen

        self.present(MainHomevc, animated: true, completion: nil)
    }
    
    @IBAction func presentPreviousVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
