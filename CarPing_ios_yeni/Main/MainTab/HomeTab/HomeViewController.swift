//
//  HomeViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true


        // Do any additional setup after loading the view.
    }

    @IBAction func presentFirstDetailVC(_ sender: UIButton) {
        
        let FirstDetailvc = FirstDetailViewController() //change this to your class name
                FirstDetailvc.modalPresentationStyle = .fullScreen

                self.present(FirstDetailvc, animated: true, completion: nil)
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
