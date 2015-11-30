//
//  ViewController.swift
//  potluck3
//
//  Created by Fei Yao Li on 10/18/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON

class ViewController: UIViewController {
   
    @IBOutlet weak var findMeal: UIButton!
    @IBOutlet weak var makeMeal: UIButton!
    @IBOutlet weak var FindAnotherMeal: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func firstButtonPressed() {
        let findMealController = self.storyboard!.instantiateViewControllerWithIdentifier("FindMealController") as! FindMealController
        
        self.navigationController?.pushViewController(findMealController, animated: true)
    }

    @IBAction func secondButtonPressed() {
        let makeMealController = self.storyboard!.instantiateViewControllerWithIdentifier("MakeMealController") as! MakeMealController
        
        self.navigationController?.pushViewController(makeMealController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func thirdButtonPressed() {
        let makeFindMealController2 = self.storyboard!.instantiateViewControllerWithIdentifier("FindMealController3") as! FindMealController3
        
        self.navigationController?.pushViewController(makeFindMealController2, animated: true)
    }
    
//    var ref = Firebase(url: "https://sizzling-inferno-2998.firebaseio.com/")
//    @IBOutlet weak var osn: UILabel!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        let uu = "https://sizzling-inferno-2998.firebaseio.com/potluck/data/posts"
//        let ref2 = Firebase(url: uu)
//        //func post(ref: Firebase, title: String, location: String, date: String, time: Int, max: Int, details: String)
//        //ser.post(ref2, title: "st", location: "this", date: "stuff", time: 2, max: 3, details: "mk")
//        ref2.observeEventType(.Value, withBlock: { snapshot in
//            print(snapshot.value)
//            let json = JSON(snapshot.value)
//            print(json)
//            }, withCancelBlock: { error in
//                print(error.description)
//        })
//    }
}

