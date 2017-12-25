//
//  ColumnListHeader.swift
//  Liwushuo
//
//  Created by hans on 16/7/12.
//  Copyright © 2016年 汉斯哈哈哈. All rights reserved.
//

import UIKit

class ColumnListHeader: UIView {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoImageView.clipsToBounds = true
        photoImageView.contentMode =  UIViewContentMode.scaleAspectFill;
        photoImageView.image = UIImage(named: "strategy_\(Int(arc4random() % 17) + 1).jpg")
    }
    
    class func columnListHeader() -> ColumnListHeader{
        return Bundle.main.loadNibNamed("ColumnListHeader", owner: nil, options: nil)!.last as! ColumnListHeader
    }

}
