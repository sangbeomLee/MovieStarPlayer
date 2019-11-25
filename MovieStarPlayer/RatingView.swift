//
//  RatingView.swift
//  MovieStarPlayer
//
//  Created by 이상범 on 2019/11/25.
//  Copyright © 2019 sangbeom Lee. All rights reserved.
//

import UIKit

class RatingView: UIStackView {
    private var ratingButtons: [UIButton] = []
    public var rating = 0 {
        didSet{
            // 바뀔때마다 호출되는 함수
            updateButtonSelectionState()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupButton(){
        
    }

    // 레이팅보다 작은 인덱스는 셀렉티드
    func updateButtonSelectionState(){
        for(index, button) in ratingButtons.enumerated(){
            button.isSelected = index < self.rating
        }
    }
}
