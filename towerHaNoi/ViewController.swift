//
//  ViewController.swift
//  towerHaNoi
//
//  Created by Macbook on 5/8/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label1: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = "A"
        let b = "B"
        let c = "C"
        print("Tower HA NOI with n = 1")
        towerHaNoi(n: 1, a: a, b:b , c: c)
        print("Tower HA NOI with n = 2")
        towerHaNoi(n: 2, a: a, b:b , c: c)
        print("Tower HA NOI with n = 3")
        towerHaNoi(n: 3, a: a, b:b , c: c)
        print("Tower HA NOI with n = 4")
        towerHaNoi(n: 4, a: a, b:b , c: c)
//        addLabel1()
//        addLabel2()
//        animation()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func towerHaNoi(n: Int , a:String, b:String, c:String){
        if n == 1 {
            moveDisk(a: a, b: c)
        }else{
            towerHaNoi(n: n-1, a: a, b: c, c: b)
            moveDisk(a: a, b: c)
            towerHaNoi(n: n-1, a: b, b: a, c: c)
        }
    }
    func moveDisk(a:String , b:String){
    print("Move disk \(a) to \(b)")
    }
    
//    func animation(){
//        UIView.setAnimationsEnabled(true)
//        UIView.animate(withDuration: 0.5, animations: {
//            self.moveLabel(from: self.label2, to: self.label1)
//        })
//        
//    }
//    
   
    
//    func addLabel1(){
//        
//        label1 = UILabel(frame: CGRect(x: 100, y: 100, width: 80, height: 80))
//        view.addSubview(label1)
//    }
//    func addLabel2(){
//        label2 = UILabel(frame: CGRect(x: 300, y: 100, width: 80, height: 80))
//        label2.backgroundColor = UIColor.blue
//        view.addSubview(label2)
//    }
//
//    func moveLabel(from: UILabel, to: UILabel){
//          from.center = to.center
//    }


}

