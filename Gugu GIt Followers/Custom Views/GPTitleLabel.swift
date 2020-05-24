//
//  GPTitleLabel.swift
//  Gugu GIt Followers
//
//  Created by Pardip Bhatti on 24/05/20.
//  Copyright © 2020 Pardip Bhatti. All rights reserved.
//

import UIKit

class GPTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        
        self.textAlignment  = textAlignment
        self.font           = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        
        configure()
    }
    
    private func configure() {
        textColor                   = .label      // black on white screen and white on black screen
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        lineBreakMode               = .byTruncatingTail
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
