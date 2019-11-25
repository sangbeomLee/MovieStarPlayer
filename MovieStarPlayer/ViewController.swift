//
//  ViewController.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController{

    var videoList:[VideoModel] = []
    @IBOutlet weak var tableViewMain: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ratingView 확인을 위한 dummy data
        let dummy1 = VideoModel.init(title: "video1", video: nil, videoIMG: UIImage(named: "img1"), rating: 3)
        let dummy2 = VideoModel.init(title: "video2", video: nil, videoIMG: UIImage(named: "img2"), rating: 2)
        let dummy3 = VideoModel.init(title: "video3", video: nil, videoIMG: UIImage(named: "img3"), rating: 5)
           
        videoList.append(dummy1)
        videoList.append(dummy2)
        videoList.append(dummy3)
        
    }

    @IBAction func moveToAddVideo(_ sender: Any) {
        // UIStoryboard 로 움직이고 싶을 때 사용한다.
        let playerVC = UIStoryboard(name: "Player", bundle: nil).instantiateViewController(withIdentifier: "navigationPlayer")
        
        self.present(playerVC, animated: true, completion: nil)
        
    }
    
}

// storyboard에서 연결 먼저 해 주어야한다.
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension ViewController: UITableViewDataSource{
    // 몇개 보여줄건지
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let videoCell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! VideoCell
        videoCell.labelCell.text = videoList[indexPath.row].title
        videoCell.ratingViewCell.rating = videoList[indexPath.row].rating
        videoCell.imageViewCell.image = videoList[indexPath.row].videoIMG
        
        return videoCell
    }
    
    
}
