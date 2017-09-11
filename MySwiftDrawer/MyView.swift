//
//  MyView.swift
//  MySwiftDrawer
//
//  Created by 江宗益 on 2017/9/11.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import Cocoa

class MyView: NSView {

    override func draw(_ dirtyRect: NSRect) {

        var myPath = NSBezierPath()
        myPath.move(to: CGPoint(x: 0, y: 0))
        myPath.line(to: CGPoint(x: 100, y: 100))
        myPath.line(to: CGPoint(x:150, y:50))
        myPath.stroke()
        
        
        
        
    }
    
}