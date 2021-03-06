//
//  MyView.swift
//  MySwiftDrawer
//
//  Created by 江宗益 on 2017/9/11.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import Cocoa

class MyView: NSView {
    
    var line:[CGPoint] = []  //array<CGpoint>
    var lines:[[CGPoint]] = [] //array<array<CGpoint>>
    
        //My View   的呈現畫面
    override func draw(_ dirtyRect: NSRect) {
        for line in lines {
        //一條線
        if line.count<2 {continue}
        let myPath = NSBezierPath()
        myPath.move(to: line[0])
        for i in 1..<line.count{
            myPath.line(to: line[i])
        }
      
        
        myPath.stroke()
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        var line:[CGPoint] = []
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        line += [CGPoint(x: px, y: py)]
        lines += [line]
        
    }
    
//    override func mouseUp(with event: NSEvent) {
//        let px = event.locationInWindow.x
//        let py = event.locationInWindow.y
//        line += [CGPoint(x: px, y: py)]
//        
//    }
    
    override func mouseDragged(with event: NSEvent) {
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        line += [CGPoint(x: px, y: py)]
        needsDisplay = true
        lines[lines.count-1] += [CGPoint(x: px, y: py)]
    }
    
    func clearme(){
        lines = []
        needsDisplay = true
    }
    
    func undo(){
        if lines.count > 1 {
        lines.remove(at: lines.count - 1)
        needsDisplay = true
        }
    }
    
    func redo(){
        lines.
    }
    
    
    
    
    
    
    
    
}
