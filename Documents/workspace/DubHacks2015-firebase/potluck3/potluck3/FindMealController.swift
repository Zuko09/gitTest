//
//  FindMealController.swift
//  potluck3
//
//  Created by Varun Viswanath on 10/18/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON

class FindMealController: UIViewController {
    
    var ref = Firebase(url: "https://sizzling-inferno-2998.firebaseio.com/")
    @IBOutlet weak var osn: UILabel!
    @IBOutlet weak var Op: UILabel!
    @IBOutlet weak var Date: UILabel!
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var max: UILabel!
    
    
    @IBOutlet weak var mealName: UILabel?
    @IBOutlet weak var mealLocation: UILabel?
    @IBOutlet weak var mealTime: UILabel?
    @IBOutlet weak var mealComment: UILabel?
    
    
//    func nameFunction() {
//        self.mealName!.text = MakeMealController.mealName.text
//        
//    }
//    
//    func commentFunction() {
//        self.mealComment!.text = "HELLLLOOOO"
//        
//    }
//    func timeFunction() {
//        self.mealTime!.text = "HELLLLOOOO"
//        
//    }
//    func locationFunction() {
//        self.mealLocation!.text = "HELLLLOOOO"
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let uu = "https://sizzling-inferno-2998.firebaseio.com/potluck/data/posts/MutterPaneer"
        let ref2 = Firebase(url: uu)
        //func post(ref: Firebase, title: String, location: String, date: String, time: Int, max: Int, details: String)
        //ser.post(ref2, title: "st", location: "this", date: "stuff", time: 2, max: 3, details: "mk")
        var array = [UILabel]()
        array.append(mealName!)
        array.append(mealLocation!)
        array.append(mealTime!)
        array.append(mealComment!)
        ref2.observeEventType(.Value, withBlock: { snapshot in
            print(snapshot.value)
            let json = JSON(snapshot.value)
            var list = PostList(json: json)
//            self.mealName?.text = "Mutter Paneer"
//            self.mealLocation?.text = list.get("Mutter Paneer", datem: "location")
//            self.mealTime?.text = list.get("Mutter Paneer", datem: "time")
//            self.mealComment?.text = list.get("Mutter Paneer", datem: "comment")
            
            }, withCancelBlock: { error in
                print(error.description)
                
        })

//        nameFunction()
//        locationFunction()
//        timeFunction()
//        commentFunction()
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


