//
//  VideoModel.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit
import AVKit

class VideoModel {

    var title: String
    var video: AVPlayer?
    var videoIMG: UIImage?
    var rating: Int
    
    init(title: String, video: AVPlayer?, videoIMG: UIImage?, rating: Int){
        self.title = title
        self.video = video
        self.videoIMG = videoIMG
        self.rating = rating
    }
}
