//
//  ViewController.swift
//  TicTacToe
//
//  Created by Austin Quach on 2/22/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var txtField2: UITextField!
    var txtField1: UITextField!
    var activePlayer = 1 //Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var player1 = UserDefaults.standard.string(forKey: "p1") ?? "Player 1"
    var player2 = UserDefaults.standard.string(forKey: "p2") ?? "Player 2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newGame(_ sender: Any) {
        let alert = UIAlertController(title: "Players", message: "Enter Players Names:", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField(configurationHandler: addTextField1)
        alert.addTextField(configurationHandler: addTextField2)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: { (UIAlertAction)in
            print("Cancel")
        }))
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            if self.txtField1.text == "" {
                self.txtField1.text = "Player 1"
            }
            
            if self.txtField2.text == "" {
                self.txtField2.text = "Player 2"
            }
            
            UserDefaults.standard.set(self.txtField1.text, forKey: "p1")
            UserDefaults.standard.set(self.txtField2.text, forKey: "p2")
            var newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "game") as! GameViewController
            self.present(newGameViewController, animated: true, completion: nil)
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func addTextField1(textField: UITextField!)
    {
        textField.placeholder = "Player 1"
        txtField1 = textField
    }
    
    func addTextField2(textField: UITextField!)
    {
        textField.placeholder = "Player 2"
        txtField2 = textField
    }
}

