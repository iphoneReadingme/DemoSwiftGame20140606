//
//  AppDelegate.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 02/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import UIKit


class shape
{
	var x: Double
	var y: Double
	var text: String? ///< 可选属性类型
	func description() -> String
	{
		return "x=\(x), y=\(y)";
	}
	
	init ()
	{
		x = 0;
		y = 0;
	}
	
	func setPoint(x: Double, y: Double)
	{
		self.x = x;
		self.y = y;
	}
}


class Rectangle: shape
{
	var w: Double
	var h: Double
	
	override func description() -> String
	{
		return super.description() + "; w=\(w), h=\(h)";
	}
	
	init ()
	{
		self.w = 0;
		self.h = 0;
		super.init()
	}
	
	override func setPoint(x: Double, y: Double)
	{
		self.x = x;
		self.y = y;
	}
}



