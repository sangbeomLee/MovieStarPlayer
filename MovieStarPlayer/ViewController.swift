//
//  ViewController.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var videoList:[VideoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveToAddVideo(_ sender: Any) {
        
        // UIStoryboard 로 움직이고 싶을 때 사용한다.
        let playerVC = UIStoryboard(name: "Player", bundle: nil).instantiateViewController(withIdentifier: "navigationPlayer")
        
        self.present(playerVC, animated: true, completion: nil)
        
    }
    
    
}

