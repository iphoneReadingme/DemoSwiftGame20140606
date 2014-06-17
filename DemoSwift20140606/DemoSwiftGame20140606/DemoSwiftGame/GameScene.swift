//
//  GameScene.swift
//  DemoSwiftGame
//
//  Created by yangfs on 14-6-6.
//  Copyright (c) 2014年 ucweb. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	var helloNode: HelloWorld!
	
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
		self.addChild(myLabel)
		
		self.addHelloWorldObj();
		
		///< 添加节点
		var pt: CGPoint = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
		self.addSpriteObj(pt)
    }
	
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
//			NSLog("location= \(location)")
//			NSLog("touches= \(touches)")
//			
//			var nCount: Int = touch.tapCount;
//			if nCount == 2
//			{
//				self.touchOne()
//			}
        }
    }
	override func touchesEnded(touches: NSSet, withEvent event: UIEvent)
	{
		for touch: AnyObject in touches
		{
			var location: CGPoint = touch.locationInNode(self)
			NSLog("location= \(location)")
			NSLog("touches= \(touches)")
			
			var nCount: Int = touch.tapCount;
			if nCount == 2
			{
				///< 双击打印测试信息
				self.touchOne()
			}
			else if nCount == 1
			{
				self.helloNode.update(location)
			}
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
		
		//sprite.runAction(SKAction.repeatActionForever(action))
		
		self.addChild(sprite)
	}
	
	func addHelloWorldObj()
	{
		var helloNode: HelloWorld = HelloWorld();
		self.addChild(helloNode.newHelloLabelNode(self.frame));
		self.helloNode = helloNode;
	}
	
	func addTestFun()
	{
		///< 测试代码
		var demoObj: DemoTest = DemoTest();
		demoObj.testFun();
	}
	
	func touchOne()
	{
		self.addTestFun();
	}
}
