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
   
    
    
    
}
