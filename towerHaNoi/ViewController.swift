//
//  ViewController.swift
//  towerHaNoi
//
//  Created by Macbook on 5/8/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let towerA = Towers(name: "A", disks: [
        Disks(diameter: "Large"),
        Disks(diameter: "Medium"),
        Disks(diameter: "Small"),
        ])
    let towerB = Towers(name: "B")
    let towerC = Towers(name: "C")
 
    let run = GameEngine()
    
    let graphicTower = Graphic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(graphicTower)
        run.moveAllDisk(from: towerA, to: towerC, temp: towerB)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func animation(){
        UIView.setAnimationsEnabled(true)
        UIView.animate(withDuration: 5.0, animations: {
//            self.move(from: self.label3, to: self.labelHildenGra1)
        })
        
    }
  

}

