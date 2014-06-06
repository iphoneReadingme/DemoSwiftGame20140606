//
//  AppDelegate.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 02/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import UIKit


class DemoTest: UIResponder
{
	func testFun ()
	{
		NSLog("Hello, %@", "world");
		self.testValueSet();
		self.iterateDictionary();
		
	}
	
	func testValueSet()
	{
		let languageName = "Swift"
		//languageName = "Swift++"
		// this is a compile-time error --- languageName cannot be changed
		let twoThousand: UInt16 = 2_000
		let pi = 3.14159
		let π = 3.14159
		let 你好 = "你好世界"
		let 🐶🐮 = "dogcow"
		
		///< 常理定义
		let maximumNumberOfLoginAttempts = 10
		
		///< 单变量定义
		var fValue : Float = 4;
		fValue = 7;
		NSLog("fValue=%f", fValue);
		var labelTitle = "the width is "
		labelTitle = labelTitle + String(50);
		labelTitle = labelTitle + " \(60)";
		NSLog("labelTitle=%@.", labelTitle);
		
		///< 数组
		var shoppingList = ["catfish", "water", "tulips", "blue paint"];
		NSLog("shoppingList=%@.", shoppingList);
		shoppingList[1]="new [water]";
		NSLog("shoppingList=%@.", shoppingList);
		
		///< 字典
		var occupations =
		[
			"Malcolm" : "Captain",
			"Kaylee" : "Mechanic",
		];
		NSLog("occupations=%@.", occupations);
		occupations["key3"] = "Value 3";
		NSLog("occupations=%@.", occupations);
	}
	
	func ControlFlow()
	{
		let vegetable = "red pepper"
		switch vegetable
			{
		case "celery":
			let vegetableComment = "Add some raisins and make ants on a log."
		case "cucumber", "watercress":
			let vegetableComment = "That would make a good tea sandwich."
		case let x where x.hasSuffix("pepper"):
			let vegetableComment = "Is it a spicy \(x)?"
		default:    //by gashero
			let vegetableComment = "Everything tastes good in soup."
		}
	}
	
	func iterateDictionary()
	{
		let interestingNumbers = [
			"Prime": [2, 3, 5, 7, 11, 13],
			"Fibonacci": [1, 1, 2, 3, 5, 8],
			"Square": [1, 4, 9, 16, 25],
		]
		for (key, values) in interestingNumbers
		{
			var message = "key = ";
			for valueNum in values
			{
				message = message + ", " + String(valueNum);
			}
			NSLog("message=%@.", message);
		}
		
		///< for 循环
		var sums = 0;
		for i in 0 .. 3
		{
			sums += i;
		}
		NSLog("sums=%d.", sums);
		
		var retValue = self.funcTest("world", day: "2014-06-05", value: 50.1);
		
		NSLog("retValue=%@.", retValue);
	}
	
	func funcTest(name: String, day: String, value: Float) -> NSString
	{
		var message = " ";
		
		message = "text: \(name), today is \(day), value=\(value)"
		
		return message;
	}

}

///< MARK: == 测试代码
//#pragma mark - ==
struct Resolution {
	var width = 0
	var height = 0
}
class VideoMode {
	var resolution = Resolution()
	var interlaced = false
	var frameRate = 0.0
	var name: String?
	
	func initVideoMode()
	{
		let resObj = Resolution();
		var vidObj = 0;
	}
}




