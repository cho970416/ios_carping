//
//  CollectionViewCell.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/23.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var detailLB: UILabel!
    @IBOutlet weak var reviewLB: UILabel!
    @IBOutlet weak var locationImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
