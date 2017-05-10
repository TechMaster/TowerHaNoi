//
//  Towers.swift
//  towerHaNoi
//
//  Created by Macbook on 5/9/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class Towers: NSObject {
    
    var disks : [Disks]
    var name : String
    init(name: String,disks: [Disks]) {
        self.name = name
        self.disks = disks
    }
    convenience init(name: String) {
        self.init(name: name, disks: Array<Disks>())
    }
    func addDisk(disk : Disks){
        disks.append(disk)
    }
    func removeTopDisk() -> Disks{
        return disks.removeLast()
    }
    var diskCount: Int { return disks.count }
    
    
    
    
//  Paint Tower
    func setTower(view: UIView){
        
        var screenWidth = CGFloat()
        var screenHeigtt = CGFloat()
        let screenSize : CGRect = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeigtt = screenSize.height
        let width = ((screenWidth - CGFloat(4*20))/3)
//        let height = CGFloat(30)
        //tower A
        let label1 = UILabel(frame: CGRect(x: CGFloat(20), y: screenHeigtt*14/16, width: width, height: 30))
        label1.backgroundColor = UIColor.black
        view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: CGFloat(20) + width*3/7, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        label2.backgroundColor = UIColor.black
        view.addSubview(label2)
        // tower B
        let label3 = UILabel(frame: CGRect(x: 2*CGFloat(20) + width, y: screenHeigtt*14/16, width: width, height: 30))
        label3.backgroundColor = UIColor.black
        view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRect(x: 2*CGFloat(20) + width*3/7 + width, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        label4.backgroundColor = UIColor.black
        view.addSubview(label4)
        // tower C
        let label5 = UILabel(frame: CGRect(x: 3*CGFloat(20) + width*2, y: screenHeigtt*14/16, width: width, height: 30))
        label5.backgroundColor = UIColor.black
        view.addSubview(label5)
        
        let label6 = UILabel(frame: CGRect(x: 3*CGFloat(20) + width*3/7 + width*2, y: screenHeigtt*14/16 - CGFloat(30)*2, width: width/7, height: 30*2))
        label6.backgroundColor = UIColor.black
        view.addSubview(label6)
        
        
    }
}
