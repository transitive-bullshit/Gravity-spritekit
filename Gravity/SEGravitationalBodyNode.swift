//
//  GravitationalBodyNode.swift
//  Test
//
//  Created by Travis Fischer on 6/24/15.
//  Copyright (c) 2015 Sesh. All rights reserved.
//

import SpriteKit

class SEGravitationalBodyNode: SKSpriteNode {
    
    static let s_shader = SKShader(fileNamed: "GravitationalBodyNode")
    
    var radius: CGFloat!

    convenience init(radius: CGFloat) {
        self.init()
        
        self.radius = radius
        self.texture = SKTexture(imageNamed: "dummy")
        self.blendMode = SKBlendMode.Add
        self.shader = SEGravitationalBodyNode.s_shader
    }
}
