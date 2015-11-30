//
//  FindMealController3.swift
//  potluck3
//
//  Created by Varun Viswanath on 11/28/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import Foundation

import UIKit

class FindMealController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawLabel("Event", coordinate: 30)
        drawLabel("Time", coordinate: 150)
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    func drawLabel(name:String, coordinate:CGFloat) {
        var text: UILabel = UILabel()
        text.frame = CGRectMake(coordinate, 70, 100, 30)
        text.backgroundColor = UIColor.redColor()
        text.textColor = UIColor.blackColor()
        text.textAlignment = NSTextAlignment.Center
        text.text = name
        
        self.view.addSubview(text)

    }
    
}       