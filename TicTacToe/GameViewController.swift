//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Austin Quach on 2/22/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        p1Label.text = UserDefaults.standard.string(forKey: "p1")
        p2Label.text = UserDefaults.standard.string(forKey: "p2")
        
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
    
    var activePlayer = 1 // Cross
    var gameData = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var txtField2: UITextField!
    var txtField1: UITextField!
    var player1 = UserDefaults.standard.string(forKey: "p1") ?? "Player 1"
    var player2 = UserDefaults.standard.string(forKey: "p2") ?? "Player 2"

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    
    @IBAction func action(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        print(button.tag)
        switch button.tag {
        case 1:
            if (gameData[0] == 0) {
                if (activePlayer == 1) {
                    button1.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button1.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
                gameData[0] = activePlayer
            }
        case 2:
            if (gameData[1] == 0) {
                if (activePlayer == 1) {
                    button2.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button2.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
                gameData[1] = activePlayer
            }
        case 3:
            if (gameData[2] == 0) {
                if (activePlayer == 1) {
                    button3.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button3.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[2] = activePlayer
        case 4:
            if (gameData[3] == 0) {
                if (activePlayer == 1) {
                    button4.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button4.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[3] = activePlayer
        case 5:
            if (gameData[4] == 0) {
                if (activePlayer == 1) {
                    button5.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button5.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[4] = activePlayer
        case 6:
            if (gameData[5] == 0) {
                if (activePlayer == 1) {
                    button6.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button6.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[5] = activePlayer
        case 7:
            if (gameData[6] == 0) {
                if (activePlayer == 1) {
                    button7.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button7.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[6] = activePlayer
        case 8:
            if (gameData[7] == 0) {
                if (activePlayer == 1) {
                    button8.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button8.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[7] = activePlayer
        case 9:
            if (gameData[8] == 0) {
                if (activePlayer == 1) {
                    button9.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button9.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[8] = activePlayer
        default:
            print("")
        }
        
        checkWinner()
        checkTie()
        print(gameData)
    }
    
    func checkWinner() -> Bool {
        if gameData[0] == gameData[1] && gameData[1] == gameData[2] && (gameData[0] == 1 || gameData[1] == 2)  {
            print("Winner1")
            displayWinner()
            return true
        } else if gameData[3] == gameData[4] && gameData[4] == gameData[5] && (gameData[3] == 1 || gameData[4] == 2){
            print("Winner2")
            displayWinner()
            return true
        } else if gameData[6] == gameData[7] && gameData[7] == gameData[8] && (gameData[6] == 1 || gameData[7] == 2) {
            print("Winner3")
            displayWinner()
            return true
        } else if gameData[0] == gameData[3] && gameData[3] == gameData[6] && (gameData[0] == 1 || gameData[3] == 2){
            print("Winner4")
            displayWinner()
            return true
        } else if gameData[1] == gameData[4] && gameData[7] == gameData[6] && (gameData[1] == 1 || gameData[4] == 2){
            print("Winner5")
            displayWinner()
            return true
        } else if gameData[2] == gameData[5] && gameData[5] == gameData[8] && (gameData[2] == 1 || gameData[5] == 2){
            print("Winner6")
            displayWinner()
            return true
        } else if gameData[2] == gameData[4] && gameData[4] == gameData[6] && (gameData[2] == 1 || gameData[4] == 2){
            print("Winner7")
            displayWinner()
            return true
        } else if gameData[0] == gameData[4] && gameData[4] == gameData[8] && (gameData[0] == 1 || gameData[4] == 2){
            print("Winner8")
            displayWinner()
            return true
        }
        return false
    }
    
    func checkTie() -> Bool {
        for i in gameData {
            if i == 0 {
                return false
            }
        }
        let alert = UIAlertController(title: "Game Over", message: "Tie Game.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            var newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        return true
    }
    
    func displayWinner() {
        //var activePlayer = 1
        //var gameData = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        let alert = UIAlertController(title: "Game Over", message: "Another Game?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            let newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler:{ (UIAlertAction)in
            let newGameViewController = self.storyboard?.instantiateViewController(withIdentifier: "game") as! GameViewController
            self.present(newGameViewController, animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func settingsAction(_ sender: Any) {
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
            
            self.p1Label.text = UserDefaults.standard.string(forKey: "p1")
            self.p2Label.text = UserDefaults.standard.string(forKey: "p2")
            
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
