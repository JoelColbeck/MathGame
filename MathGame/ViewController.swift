//
//  ViewController.swift
//  MathGame
//
//  Created by Башир on 26.10.2020.
//

import UIKit

class ViewController: UIViewController {
    var ans: Int? = 2
    @IBOutlet weak var userAnswer: UILabel!
    @IBOutlet weak var task: UILabel!
    
    @IBAction func checkAnswer() {
        var result: String?
        if (Int(userAnswer.text!) ?? 0 == self.ans) {
            result = "Right"
        } else {
            result = "Wrong"
        }

        let alertMessage = UIAlertController(title: result!, message: "Answer: \(String(self.ans!))", preferredStyle: .alert)

        alertMessage.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        self.present(alertMessage, animated: true, completion: nil)
    }
    
    @IBAction func userInput(_ sender: UIButton) {
        if (userAnswer.text! == "?") {
            userAnswer.text = ""
        }
        
        userAnswer.text?.append(sender.titleLabel!.text!)
    }
    
    @IBAction func deleteInput() {
        userAnswer.text?.removeLast()
    }
    
    
    @IBAction func showMessage() {
        let alertMessage = UIAlertController(title: "Hello", message: "World!", preferredStyle: .alert)
        alertMessage.addAction(UIAlertAction(title: "Hi!", style: .default, handler: nil))
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

