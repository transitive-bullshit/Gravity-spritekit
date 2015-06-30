//
//  GameScene.swift
//  Test
//
//  Created by Travis Fischer on 6/22/15.
//  Copyright (c) 2015 Sesh. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var _simulation: SEGravitationalSimulationNode!
    
    override func didMoveToView(view: SKView) {
        self.physicsWorld.gravity = CGVector();
        
        self._simulation = SEGravitationalSimulationNode(numNodes: 75, radius: 100)
        self._simulation.position = view.center
        self.addChild(self._simulation)
    }
   
    override func update(currentTime: CFTimeInterval) {
        self._simulation.update()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            self._simulation.compression = 1.0
        }
        
        super.touchesBegan(touches, withEvent:event)
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            self._simulation.compression = 0.0
        }
        
        super.touchesBegan(touches, withEvent:event)
    }
}
