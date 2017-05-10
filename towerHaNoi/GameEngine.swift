//
//  GameEngine.swift
//  towerHaNoi
//
//  Created by Macbook on 5/9/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class GameEngine: NSObject {
    func moveDisk(count: Int, from: Towers ,to: Towers, temp: Towers){
        
        if count == 1{
            print(from.name + "->" + to.name)
            let disk = from.removeTopDisk()
            to.addDisk(disk: disk)
            print("Đĩa được chuyển là \(disk.diameter)")
        }
        else
        {
             moveDisk(count: count - 1, from: from, to: temp, temp: to)
             moveDisk(count: 1, from: from, to: to, temp: temp)
             moveDisk(count: count - 1 , from: temp, to: to, temp: from)
        }
        
    }
    func moveAllDisk(from: Towers,to:Towers,temp:Towers){
        moveDisk(count: from.diskCount, from: from, to: to, temp: temp)
    }
    
    }
struct Move{
    let from : Towers
    let to : Towers
    init(from: Towers,to:Towers) {
        self.from = from
        self.to = to
    }
    func execute(){
        let disk = from.removeTopDisk()
        to.addDisk(disk: disk)
        print("Đĩa được chuyển là \(disk.diameter)")
//        return disk
        
    }
    
    
    
    
}
