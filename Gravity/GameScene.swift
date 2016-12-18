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
    
    override func didMove(to view: SKView) {
        self.physicsWorld.gravity = CGVector();
        
        self._simulation = SEGravitationalSimulationNode(numNodes: 75, radius: 100)
        self._simulation.position = view.center
        self.addChild(self._simulation)
    }
   
    override func update(_ currentTime: TimeInterval) {
        self._simulation.update(currentTime)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self._simulation.compression = 1.0
        
        super.touchesBegan(touches, with:event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self._simulation.compression = 0.0
        
        super.touchesBegan(touches, with:event)
    }
}
