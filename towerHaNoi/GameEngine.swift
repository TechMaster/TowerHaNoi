//
//  GameEngine.swift
//  towerHaNoi
//
//  Created by Macbook on 5/9/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class GameEngine: NSObject {
    func moveDisk(count: Int, from: Towers ,to: Towers, temp: Towers) -> [Move] {
        var move = [Move]()
        if count == 1{
            move.append(Move(from: from, to: to))
            }
        else
        {
            move += moveDisk(count: count - 1, from: from, to: temp, temp: to)
            move += moveDisk(count: 1, from: from, to: to, temp: temp)
            move += moveDisk(count: count - 1 , from: temp, to: to, temp: from)
        }
        return move
        
    }
    func moveAllDisk(from: Towers,to:Towers,temp:Towers) -> [Move] {
        return moveDisk(count: from.diskCount, from: from, to: to, temp: temp)
    }
    
    }
struct Move{
    let from : Towers
    let to : Towers
    init(from: Towers,to:Towers) {
        self.from = from
        self.to = to
    }
    let animation = Animation()
    func execute() -> Disks{
        let disk = from.removeTopDisk()
        to.addDisk(disk: disk)
        print("Đĩa được chuyển là \(disk.diameter)")
        return disk
    }
   
    

    
    
    
    
}
