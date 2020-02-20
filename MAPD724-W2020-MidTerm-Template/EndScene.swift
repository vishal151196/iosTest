//  GameViewController.swift
//  Created by Vishal Patel
//  Student No: 301090662
//  Date: 19/02/2020
//  Copyright © 2020 CentennialCollege. All rights reserved.

import UIKit
import AVFoundation
import SpriteKit
import GameplayKit


class EndScene: SKScene {
    
    
    var oceanSprite1: Ocean?
    var oceanSprite2: Ocean?
    
    override func didMove(to view: SKView)
    {
        screenWidth = frame.width
        screenHeight = frame.height

        self.name = "END"
        
        // add ocean
//        self.oceanSprite1 = Ocean()
//        self.oceanSprite1?.position = CGPoint(x: 0, y: 1864.67)
//        self.oceanSprite1?.position = CGPoint(x:frame.size.width / 2, y:frame.size.height / 2)

//        self.addChild(oceanSprite1!)
        
        self.oceanSprite2 = Ocean()
        self.oceanSprite2?.position = CGPoint(x: 0, y: 177)
        self.oceanSprite2?.size = CGSize(width: 4000, height: 4000)
        self.addChild(oceanSprite2!)
        
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self))}
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self))}
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        self.oceanSprite1?.Update()
        self.oceanSprite2?.Update()
    
    }
}

