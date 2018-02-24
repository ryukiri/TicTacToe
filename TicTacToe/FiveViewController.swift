//
//  FiveViewController.swift
//  TicTacToe
//
//  Created by Austin Quach on 2/23/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    var activePlayer = 1 // Cross
    var gameData = [0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0]
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
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button23: UIButton!
    @IBOutlet weak var button24: UIButton!
    @IBOutlet weak var button25: UIButton!
    
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

    @IBAction func action(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        
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
    }
}
