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
    
    let graphic = Graphic()
    func animation1(from: Towers, to: Towers){
        if (from.name == "A") && (to.name == "C"){
            let dics = from.removeTopDisk()
            print(dics.diameter)
            print(to.diskCount)
            if (dics.diameter == "3"){
                if to.diskCount == 0{
                    UIView.animate(withDuration: 2.0, animations: {
                       self.graphic.lbl_disk3.center = self.graphic.lbl_disktmp1.center
                    }, completion: { (finished) in
                        UIView.animate(withDuration: 2.0, delay: 2.0, options: .curveLinear, animations: {
                          self.graphic.lbl_disk3.center = self.graphic.lbl_disktmp9.center
                            
                        }, completion: { (finished) in
                            UIView.animate(withDuration: 2.0, delay: 4.0, options: .curveLinear, animations: {
                                self.graphic.lbl_disk3.center = self.graphic.lbl_disktmp6.center
                            }, completion: nil)
                        })
                    })
                }else if(to.diskCount == 1){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }else if (dics.diameter == "2"){
                if to.diskCount == 0{
                    self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp6)
                }else if(to.diskCount == 1){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }else if(dics.diameter == "1"){
                if to.diskCount == 0{
                    self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp6)
                }else if(to.diskCount == 1){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }
            // A-> B
        }
    }
    
    func animation(from: Towers , to:Towers){
        if (from.name == "A") && (to.name == "C"){
           let dics = from.removeTopDisk()
            if (dics.diameter == "1"){
                if to.diskCount == 0{
                self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp6)
                }else if(to.diskCount == 1){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                   self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }else if (dics.diameter == "2"){
                if to.diskCount == 0{
                   self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp6)
                }else if(to.diskCount == 1){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }else if(dics.diameter == "3"){
                if to.diskCount == 0{
                   self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp6)
                }else if(to.diskCount == 1){
                   self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp7)
                }else if(to.diskCount == 2){
                    self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp9, lblTo: self.graphic.lbl_disktmp8)
                }
            }
            // A-> B
        }else if (from.name == "A") && (to.name == "B"){
            let dics = from.removeTopDisk()
            if (dics.diameter == "1"){
                if to.diskCount == 0{
                   self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp2)
                }else if(to.diskCount == 1){
                       self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp3)
                }else if(to.diskCount == 2){
                       self.animationDemo(lblFrom: self.graphic.lbl_disk3, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp4)
                }
            }else if (dics.diameter == "2"){
                if to.diskCount == 0{
                       self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp2)
                }else if(to.diskCount == 1){
                     self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp3)
                }else if(to.diskCount == 2){
                   self.animationDemo(lblFrom: self.graphic.lbl_disk2, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp4)
                }
            }else if(dics.diameter == "3"){
                if to.diskCount == 0{
                     self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp2)
                }else if(to.diskCount == 1){
                     self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp3)
                }else if(to.diskCount == 2){
                     self.animationDemo(lblFrom: self.graphic.lbl_disk1, lbltmp1: self.graphic.lbl_disktmp1, lbltmp2: self.graphic.lbl_disktmp5, lblTo: self.graphic.lbl_disktmp4)
                }
            }
        }

    }
    func animationDemo(lblFrom: UILabel, lbltmp1: UILabel, lbltmp2: UILabel, lblTo: UILabel){
            UIView.animate(withDuration: 2.0, animations: {
                self.moveUp(lbl_1: lblFrom , lbl_2: lbltmp1)
            }, completion: { (finished) in
                UIView.animate(withDuration: 2.0, delay: 2.0, options: .curveLinear, animations: {
                    self.moveUp(lbl_1: lblFrom, lbl_2: lbltmp2)
                    
                }, completion: { (finished) in
                    UIView.animate(withDuration: 2.0, delay: 4.0, options: .curveLinear, animations: {
                        self.moveUp(lbl_1: lblFrom, lbl_2: lblTo)
                    }, completion: nil)
                })
            })
        
        
    }
    func moveUp(lbl_1: UILabel, lbl_2: UILabel){
        lbl_1.center = lbl_2.center
    }
    func moveAcross(){
        
    }
    func moveDown(){
        
    }
    
}
