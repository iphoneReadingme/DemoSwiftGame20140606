//
//  AppDelegate.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 02/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import UIKit

import SpriteKit

class HelloWorld
{
	var labelNode: SKLabelNode!
	var contentCreated: Bool
	
	init ()
	{
		contentCreated = false;
	}
	
	func newHelloLabelNode() -> SKLabelNode
	{
		labelNode = SKLabelNode(text: "test");
		labelNode.text = "Hello, World!"
		labelNode.position =  CGPointMake(100, 0)
		labelNode.fontSize = 40
		labelNode.fontColor = UIColor.blueColor();
		labelNode.color = UIColor.grayColor();
		
		labelNode.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(70, 60))
//		labelNode.physicsBody.dynamic = false;
		labelNode.physicsBody.affectedByGravity = false //没有重力和影响
		
		return labelNode;
	}
	
	func newHelloSpriteNode() -> SKSpriteNode
	{
		var rock = SKSpriteNode();
		rock.position = CGPointMake(50, 50);
		rock.name = "rock";
		rock.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(70, 60));
		return rock;
	}
	
	func update(pt:CGPoint)
	{
		labelNode.position = pt;
	}
}



