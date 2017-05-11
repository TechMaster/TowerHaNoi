//
//  Animation.swift
//  towerHaNoi
//
//  Created by Macbook on 5/11/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class Animation: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func animation(){
        
    }
    func moveUp(lbl_1: UILabel, lbl_2: UILabel){
        lbl_1.center = lbl_2.center
    }
    func moveAcross(){
        
    }
    func moveDown(){
        
    }
    
}
