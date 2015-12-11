//
//  ViewController.swift
//  Quiz Game
//
//  Created by amrit on 12/11/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit


struct Question {
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
}


class ViewController: UIViewController {

    
    @IBOutlet var QuesionLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet var scoreLevel: UILabel!
    
    
    var Questions = [Question]()
    var QNumber = Int()
    
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
                scoreLevel.text = "0";
        
   
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "What is sum of 2+2 ?", Answers: ["3","5","4","9"], Answer: 2),Question(Question: "What is my Name", Answers: ["Amrit Shresstha","Bhuwan","Amrit Sapkota","Bhupendra"], Answer: 2),Question(Question: "What is your Country Name", Answers: ["Nepal","Bhutan","Chinta","India"], Answer: 0),Question(Question: "What is currency of America", Answers: ["$","US $","AUS $","SNG $"], Answer: 1),Question(Question: "Who is Shiva", Answers: ["Christan God","Bouddhist God","Muslim God","Hindu God"], Answer: 3)]
        
        pickQuestion();
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func increaseScore(){
        
        var score = Int();

        score = Int(scoreLevel.text!)!;
        
        score = score+1;
        
        scoreLevel.text = String(score);
        
    }
    
   
    func userDidUpdate()
    {
        let title = "Dome!!"
        let message = "Question Finish"
        
        UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    func wrongAns()
    {
        let title = "Worng Ans!!"
        let message = "Try Again"
        
        UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    
    
    func pickQuestion(){
        if Questions.count > 0{
            QNumber = random() % Questions.count
            QuesionLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count {
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            Questions.removeAtIndex(QNumber)
        }
        else
        {
            NSLog("Question Finished");
            userDidUpdate();
        
        }
    
    }
    
    

    
    @IBAction func button1(sender: AnyObject) {
        
        if AnswerNumber == 0 {
            pickQuestion()
            
            increaseScore();
            
        }
        else{
          
            wrongAns();
        }
        
    }
    
    @IBAction func button2(sender: AnyObject) {
        
        if AnswerNumber == 1 {
            pickQuestion()
            increaseScore();
        }
        else{
            wrongAns();
        }
    }
    
    @IBAction func button3(sender: AnyObject) {
        
        if AnswerNumber == 2 {
            pickQuestion()
             increaseScore();
        }
        else{
            wrongAns();
        }
        
        
    }

    @IBAction func button4(sender: AnyObject) {
        
        if AnswerNumber == 3 {
            pickQuestion()
             increaseScore();
        }
        else{
            wrongAns();
        }
    }
   
    

    
    
}

