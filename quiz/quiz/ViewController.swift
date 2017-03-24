//
//  ViewController.swift
//  quiz
//
//  Created by md13aba on 24/02/2017.
//  Copyright © 2017 md13aba. All rights reserved.
//

import UIKit

struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class ViewController: UIViewController {
    

    @IBOutlet var myimageView: UIImageView!
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QuestionLabel: UILabel!
    @IBOutlet var options: UIView!
    @IBOutlet var plate: UIView!
    @IBOutlet var wallpaper: UIImageView!
    @IBOutlet var heading: UILabel!
    
    var Questions = [Question] ()
    var QuestionNumber = Int()
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        // Do any additional setup after loading the view, typically from a nib.

        //self.view.backgroundColor = UIColor.cyanColor()
        
        Questions = [Question(Question: "1 + 1 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 1),
        Question(Question: "2 + 2 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 3),
        Question(Question: "4 + 4 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 7),
        Question(Question: "8 - 4 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 3),
        Question(Question: "1 + 0 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 0),
        Question(Question: "1 + 1 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 1),
        Question(Question: "2 + 0 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 1),
        Question(Question: "1 + 5 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 5),
        Question(Question: "3 + 4 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 6),
        Question(Question: "4 + 0 = ?", Answers: ["1","2","3","4","5","6","7","8","9","0"], Answer: 3),]
        
        PickQuestion()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        heading.center.x -= view.bounds.width
        options.center.x -= view.bounds.width
        plate.center.x -= view.bounds.width
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1.5, animations: {
            self.heading.center.x += self.view.bounds.width
        
            //UIView.animateWithDuration(0.5, delay: 0.3, options:[], animations: {
                //self.options.center.x += self.view.bounds.width
                //}, completion: nil)
            
            //UIView.animateWithDuration(0.5, delay: 0.4, options: [], animations: {
                //self.plate.center.x += self.view.bounds.width
                //}, completion: nil)
            //.repeat, .autoreverse, .curveEaseInOut
        })
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resource that can be recreated.
    }

    func PickQuestion(){
        
        if Questions.count > 0{
            QuestionNumber = random() % Questions.count
            
            QuestionLabel.text = Questions[QuestionNumber].Question
            
            AnswerNumber = Questions[QuestionNumber].Answer
            
            for i in 0..<Buttons.count{
                
                Buttons[i].setTitle(Questions[QuestionNumber].Answers[i], forState: UIControlState.Normal)
                
            }
            
            Questions.removeAtIndex(QuestionNumber)
        
            
        }
        else{
        
            NSLog("Done")
        }
        
    
    }

    @IBAction func Btn1(sender: AnyObject) {
        if AnswerNumber == 0{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    

    @IBAction func Btn2(sender: AnyObject) {
        if AnswerNumber == 1{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            NSLog("Wrong")
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    
    @IBAction func Btn3(sender: AnyObject) {
        if AnswerNumber == 2{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn4(sender: AnyObject) {
        if AnswerNumber == 3{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn5(sender: AnyObject) {
        if AnswerNumber == 4{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn6(sender: AnyObject) {
        if AnswerNumber == 5{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn7(sender: AnyObject) {
        if AnswerNumber == 6{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn8(sender: AnyObject) {
        if AnswerNumber == 7{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn9(sender: AnyObject) {
        if AnswerNumber == 8{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    @IBAction func Btn0(sender: AnyObject) {
        if AnswerNumber == 9{
            performSegueWithIdentifier("RightSegueway", sender: nil)
            PickQuestion()
        }
        else{
            performSegueWithIdentifier("WrongSegueway", sender: nil)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
