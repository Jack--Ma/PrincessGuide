//
//  CraftSummaryCollectionViewCell.swift
//  PrincessGuide
//
//  Created by zzk on 2018/5/3.
//  Copyright © 2018 zzk. All rights reserved.
//

import UIKit

class CraftSummaryCollectionViewCell: UICollectionViewCell {
    
    let icon = IconImageView()
    
    let numberLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(icon)
        icon.snp.makeConstraints { (make) in
            make.height.width.equalTo(64)
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        contentView.addSubview(numberLabel)
        numberLabel.snp.makeConstraints { (make) in
            make.top.equalTo(icon.snp.bottom)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        numberLabel.font = UIFont.scaledFont(forTextStyle: .caption1, ofSize: 12)
        numberLabel.textColor = .darkGray
    }
    
    func configure(for consume: Craft.Consume) {
        icon.equipmentID = consume.equipmentID
        numberLabel.text = String(consume.consumeNum)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}