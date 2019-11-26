//
//  PlayerViewController.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePlayerView(_ sender: Any) {
        
        let presentingVC = presentingViewController is UINavigationController
        
        // navi에서 온거면 pop 아니면 dismiss
        if presentingVC {
            self.dismiss(animated: true, completion: nil)
        } else{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
