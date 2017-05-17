

//
//  ViewController.swift
//  towerHaNoi
//
//  Created by Macbook on 5/8/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let towerA = Towers(name: "A", disks: [Disks(diameter: "3"),Disks(diameter: "2"),Disks(diameter: "1")])
    let towerB = Towers(name: "B")
    let towerC = Towers(name: "C")
    let algorithm = GameEngine()
    let graphic = Graphic()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.excute()
        self.view.addSubview(graphic)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func excute(){
        let move = self.algorithm.moveAllDisk(from: towerA, to: towerC, temp: towerB)
        print("Tổng số lần chạy là \(move.count)")
        var delay = 0
        for i in move{
            self.pathDirection(from: i.from, to: i.to, delay: delay)
            delay = delay + 6
        }
        
        
    }
    func pathDirection(from :Towers, to :Towers, delay: Int){
        let statusTowerTo = to.diskCount
        print("Trạng thái tháp trước khi chuyển \(statusTowerTo)")
        let disk = from.removeTopDisk()
        print("Đĩa được chuyển là \(disk.diameter)")
        print("Đường đi: \(from.name) -> \(to.name)")
        if(disk.diameter == "1")&&(statusTowerTo == 0)&&(to.name == "C"){
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp1, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp9, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp6, i: delay + 4)
        }else if(disk.diameter == "2") && (statusTowerTo == 0)&&(to.name == "B"){
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp1, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp5, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp2, i: delay + 4)
        }else if(disk.diameter == "1") && (statusTowerTo == 1)&&(to.name == "B"){
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp9, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp5, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp3, i: delay + 4)
        }else if(disk.diameter == "3") && (statusTowerTo == 0)&&(to.name == "C"){
            self.animationDisk1(from: self.graphic.lbl_disk1, to: self.graphic.lbl_disktmp1, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk1, to: self.graphic.lbl_disktmp9, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk1, to: self.graphic.lbl_disktmp6, i: delay + 4)
        }else if(disk.diameter == "1") && (statusTowerTo == 0)&&(to.name == "A"){
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp5, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp1, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp10, i: delay + 4)
        }else if(disk.diameter == "2") && (statusTowerTo == 1)&&(to.name == "C"){
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp5, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp9, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk2, to: self.graphic.lbl_disktmp7, i: delay + 4)
        }else if(disk.diameter == "1") && (statusTowerTo == 2)&&(to.name == "C"){
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp1, i: delay)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp9, i: delay + 2)
            self.animationDisk1(from: self.graphic.lbl_disk3, to: self.graphic.lbl_disktmp8, i: delay + 4)
        }
        
        to.addDisk(disk: disk)
    }
    func animationDisk1(from : UILabel, to: UILabel, i:Int){
        UIView.animateKeyframes(withDuration: 2.0, delay: TimeInterval(i), options: .allowUserInteraction, animations: {
            from.center = to.center
        }, completion: nil)
    }
    
    
    
}

