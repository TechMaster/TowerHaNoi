//
//  Disks.swift
//  towerHaNoi
//
//  Created by Macbook on 5/9/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class Disks: NSObject {
    
    var diameter: String
    
    init(diameter : String) {
        self.diameter = diameter
    }
    
    
    func paintDisk(disk : UIView){
        var screenWidth = CGFloat()
        var screenHeigtt = CGFloat()
        let screenSize : CGRect = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeigtt = screenSize.height
        // weightDisk,heightDisk
        let weightDisk = ((screenWidth - CGFloat(4*20))/3)
        // paint Disk
        let label1 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk/7, y: screenHeigtt*14/16 - 20, width: weightDisk*5/7, height: 20))
        label1.backgroundColor = UIColor.red
        disk.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk*2/7, y: screenHeigtt*14/16 - 20*2, width: weightDisk*3/7, height: 20))
        label2.backgroundColor = UIColor.yellow
        disk.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: CGFloat(20) + weightDisk*3/7, y: screenHeigtt*14/16 - 20*3, width: weightDisk/7, height: 20))
        label3.backgroundColor = UIColor.green
        disk.addSubview(label3)
        
        
        
        
    }
}
