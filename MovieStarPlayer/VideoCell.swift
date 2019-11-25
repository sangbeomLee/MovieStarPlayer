//
//  VideoCell.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var ratingViewCell: RatingView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Init
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)
    }
}
