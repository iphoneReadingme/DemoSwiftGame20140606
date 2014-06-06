//
//  GameScene.swift
//  DemoSwiftGame
//
//  Created by yangfs on 14-6-6.
//  Copyright (c) 2014年 ucweb. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
		self.addChild(myLabel)
		
		///< 添加节点
		var pt: CGPoint = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
		self.addSpriteObj(pt)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
			
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
	
	///< 添加一个sprite对象(渲染节点)
	func addSpriteObj(pt: CGPoint)
	{
		let sprite = SKSpriteNode(imageNamed:"Spaceship")
		
		sprite.xScale = 0.5
		sprite.yScale = 0.5
		sprite.position = pt
		
		let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
		
		sprite.runAction(SKAction.repeatActionForever(action))
		
		self.addChild(sprite)
	}
}
