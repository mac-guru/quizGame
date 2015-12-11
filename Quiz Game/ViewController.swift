//
//  ViewController.swift
//  Quiz Game
//
//  Created by amrit on 12/11/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit


struct Quesestion {
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
}


class ViewController: UIViewController {

    
    @IBOutlet var QuesionLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

