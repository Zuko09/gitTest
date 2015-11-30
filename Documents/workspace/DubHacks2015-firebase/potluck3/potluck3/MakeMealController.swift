//
//  MakeMealController.swift
//  potluck3
//
//  Created by Varun Viswanath on 10/18/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import UIKit

import Firebase

class MakeMealController: UIViewController {
    
    // MARK: Properties
    var varun = User(name: "Varun", email: "uw")
    
    var ref = Firebase(url: "https://sizzling-inferno-2998.firebaseio.com/potluck/data/posts")
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    @IBOutlet weak var mealName: UITextField!
    
    @IBOutlet weak var mealLocation: UITextField!
    
    @IBOutlet weak var mealComment: UITextField!
    
    @IBOutlet weak var mealDate: UITextField!
    
    
    @IBAction func hasBeenSubmitted(sender: UIButton) {
        //  func post(ref: Firebase, title: String, location: String, date: String, time: Int, max: Int, details: String)
        varun.post(ref, title: mealName.text!, location: mealLocation.text!, date: mealDate.text!, time: 0, max : 1, details: mealComment.text!)
    }
    
    // MARK: Navigation
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}