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
        setupButton()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton(){
        let starBlack = UIImage(named: "starBlack")
        let starOrange = UIImage(named: "starOrange")
        let starWhite = UIImage(named: "starWhite")
        
        self.spacing = 3
        for _ in 1..<6{
            let button = UIButton()
            
            button.widthAnchor.constraint(equalToConstant: 40).isActive = true
            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
            button.setImage(starBlack, for: .selected)
            button.setImage(starWhite, for: .normal)
            button.setImage(starOrange, for: .highlighted)
            
            self.addArrangedSubview(button)
            ratingButtons.append(button)
        }
    }

    // 레이팅보다 작은 인덱스는 셀렉티드
    func updateButtonSelectionState(){
        for(index, button) in ratingButtons.enumerated(){
            button.isSelected = index < self.rating
        }
    }
}
