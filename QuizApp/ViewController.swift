//
//  ViewController.swift
//  QuizApp
//
//  Created by yashn on 04/09/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var queLable: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
   
    @IBOutlet weak var progressBar: UIView!
    
    let allQue = Quebanks()
    var pickAns: Bool = false
    var quesNumber: Int = 0
    var score: Int = 0
    
    //var
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nextQue()
        //progressLbl.text = String(quesNumber)
        queLable.text = allQue.list[quesNumber].queText
        updateUi()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func trueBtn(_ sender: UIButton) {
        if (sender.tag == 1)
        {
            pickAns = true
            
        }
       
        if(sender.tag == 2)
            {
                pickAns = false
                
                
            }
        
        chckAnswer()
        quesNumber = quesNumber + 1
        nextQue()
        updateUi()
    }
    
    func chckAnswer() {
        let corretAnswer = allQue.list[quesNumber].ans
        
        if(corretAnswer == pickAns)
        {
            ProgressHUD.showSuccess("Correct")
            score = score + 1
            
          
            
        }
        else
        {
            
            ProgressHUD.showError("Wrong")
            
            
        }
        
    }
    
    func startOver()
    {
        quesNumber = 0
        queLable.text = allQue.list[quesNumber].queText
        score = 0
       
        
    }
    
    func updateUi() {
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(quesNumber)
        scoreLbl.text =  String(score)
        progressLbl.text = String(quesNumber) + "/13"
        nextQue()
        
        
    }

    func nextQue()
    {
        if (quesNumber<13)
        {
            queLable.text = allQue.list[quesNumber].queText
         
         
            
        }
        else {
           startOver()
        }
        
    
    }
    

    
}

