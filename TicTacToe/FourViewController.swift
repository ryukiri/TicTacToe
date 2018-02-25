//
//  FourViewController.swift
//  TicTacToe
//
//  Created by Austin Quach on 2/24/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    var activePlayer = 1 // Cross
    var gameData = [0, 0, 0, 0,
                    0, 0, 0, 0,
                    0, 0, 0, 0,
                    0, 0, 0, 0]
    var txtField2: UITextField!
    var txtField1: UITextField!
    var player1 = UserDefaults.standard.string(forKey: "p1") ?? "Player 1"
    var player2 = UserDefaults.standard.string(forKey: "p2") ?? "Player 2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p1.text = UserDefaults.standard.string(forKey: "p1")
        p2.text = UserDefaults.standard.string(forKey: "p2")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func checkTie() -> Bool {
        for i in gameData {
            if i == 0 {
                return false
            }
        }
        let alert = UIAlertController(title: "Game Over", message: "Tie Game.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            let newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        return true
    }
    
    func displayWinner() {
        let alert = UIAlertController(title: "Game Over", message: "Another Game?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            let newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            let newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "five") as! FiveViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func settings(_ sender: Any) {
        let alert = UIAlertController(title: "Players", message: "Edit Players Names:", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField(configurationHandler: addTextField1)
        alert.addTextField(configurationHandler: addTextField2)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: { (UIAlertAction)in
            print("Cancel")
        }))
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            if self.txtField1.text != "" {
                UserDefaults.standard.set(self.txtField1.text, forKey: "p1")
            }
            
            if self.txtField2.text != "" {
                UserDefaults.standard.set(self.txtField2.text, forKey: "p2")
            }
            
            self.p1.text = UserDefaults.standard.string(forKey: "p1")
            self.p2.text = UserDefaults.standard.string(forKey: "p2")
            
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
