//
//  Graphic.swift
//  towerHaNoi
//
//  Created by Macbook on 5/11/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class Graphic: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var lbl_towerA1 :UILabel = UILabel()
    var lbl_towerA2 :UILabel = UILabel()
    var lbl_towerB1 :UILabel = UILabel()
    var lbl_towerB2 :UILabel = UILabel()
    var lbl_towerC1 :UILabel = UILabel()
    var lbl_towerC2 :UILabel = UILabel()
    
    var lbl_disk1 : UILabel = UILabel()
    var lbl_disk2 : UILabel = UILabel()
    var lbl_disk3 : UILabel = UILabel()
    
    var arrayPoint = [CGPoint]()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createTower()
        self.createDisk()
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createTower(){
        var screenWidth = CGFloat()
        var screenHeigtt = CGFloat()
        let screenSize : CGRect = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeigtt = screenSize.height
        let width = ((screenWidth - CGFloat(4*20))/3)
        
        lbl_towerA1 = UILabel(frame: CGRect(x: CGFloat(20), y: screenHeigtt*14/16, width: width, height: 30))
        lbl_towerA1.backgroundColor = UIColor.black
        self.addSubview(lbl_towerA1)
        
        lbl_towerA2 = UILabel(frame: CGRect(x: CGFloat(20) + width*3/7, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        lbl_towerA2.backgroundColor = UIColor.black
        self.addSubview(lbl_towerA2)
        // tower B
        lbl_towerB1 = UILabel(frame: CGRect(x: 2*CGFloat(20) + width, y: screenHeigtt*14/16, width: width, height: 30))
        lbl_towerB1.backgroundColor = UIColor.black
        self.addSubview(lbl_towerB1)
        
        lbl_towerB2 = UILabel(frame: CGRect(x: 2*CGFloat(20) + width*3/7 + width, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        lbl_towerB2.backgroundColor = UIColor.black
        self.addSubview(lbl_towerB2)
        // tower C
        lbl_towerC1 = UILabel(frame: CGRect(x: 3*CGFloat(20) + width*2, y: screenHeigtt*14/16, width: width, height: 30))
        lbl_towerC1.backgroundColor = UIColor.black
        self.addSubview(lbl_towerC1)
        
        lbl_towerC2 = UILabel(frame: CGRect(x: 3*CGFloat(20) + width*3/7 + width*2, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        lbl_towerC2.backgroundColor = UIColor.black
        self.addSubview(lbl_towerC2)
        
        }
    func createDisk(){
        var screenWidth = CGFloat()
        var screenHeigtt = CGFloat()
        let screenSize : CGRect = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeigtt = screenSize.height
        // weightDisk,heightDisk
        let weightDisk = ((screenWidth - CGFloat(4*20))/3)
        // paint Disk
        lbl_disk1 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk/7, y: screenHeigtt*14/16 - 20, width: weightDisk*5/7, height: 20))
        lbl_disk1.backgroundColor = UIColor.red
        self.addSubview(lbl_disk1)
        
        lbl_disk2 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk*2/7, y: screenHeigtt*14/16 - 20*2, width: weightDisk*3/7, height: 20))
        lbl_disk2.backgroundColor = UIColor.yellow
        self.addSubview(lbl_disk2)
        
        lbl_disk3 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk*3/7, y: screenHeigtt*14/16 - 20*3, width: weightDisk/7, height: 20))
        lbl_disk3.backgroundColor = UIColor.green
        self.addSubview(lbl_disk3)
    }
    
}
