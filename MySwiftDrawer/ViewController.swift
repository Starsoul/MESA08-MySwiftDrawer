//
//  ViewController.swift
//  MySwiftDrawer
//
//  Created by 江宗益 on 2017/9/11.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var Myview: MyView!
    
    
    @IBAction func Clear(_ sender: Any) {
        Myview.clearme()
    }
    
    
    @IBAction func undo(_ sender: Any) {
        Myview.undo()
    }
    
    @IBAction func redo(_ sender: Any) {
        Myview.redo()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let myview = MyView(frame: frame)
        view.addSubview(myview)
        */
    }

    override var representedObject: Any? {
        didSet {
       
        }
    }


}

