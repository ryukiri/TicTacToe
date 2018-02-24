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
        case 10:
            if (gameData[9] == 0) {
                if (activePlayer == 1) {
                    button10.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button10.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[9] = activePlayer
        case 11:
            if (gameData[10] == 0) {
                if (activePlayer == 1) {
                    button11.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button11.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[10] = activePlayer
        case 12:
            if (gameData[11] == 0) {
                if (activePlayer == 1) {
                    button12.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button12.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[11] = activePlayer
        case 13:
            if (gameData[12] == 0) {
                if (activePlayer == 1) {
                    button13.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button13.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[12] = activePlayer
        case 14:
            if (gameData[13] == 0) {
                if (activePlayer == 1) {
                    button14.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button14.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[13] = activePlayer
        case 15:
            if (gameData[14] == 0) {
                if (activePlayer == 1) {
                    button15.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button15.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[14] = activePlayer
        case 15:
            if (gameData[14] == 0) {
                if (activePlayer == 1) {
                    button15.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button15.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[14] = activePlayer
        case 16:
            if (gameData[15] == 0) {
                if (activePlayer == 1) {
                    button16.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button16.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[15] = activePlayer
        case 17:
            if (gameData[16] == 0) {
                if (activePlayer == 1) {
                    button17.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button17.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[16] = activePlayer
        case 18:
            if (gameData[17] == 0) {
                if (activePlayer == 1) {
                    button18.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button18.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[17] = activePlayer
        case 19:
            if (gameData[18] == 0) {
                if (activePlayer == 1) {
                    button19.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button19.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[18] = activePlayer
        case 20:
            if (gameData[19] == 0) {
                if (activePlayer == 1) {
                    button20.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button20.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[19] = activePlayer
        case 21:
            if (gameData[20] == 0) {
                if (activePlayer == 1) {
                    button21.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button21.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[20] = activePlayer
        case 22:
            if (gameData[21] == 0) {
                if (activePlayer == 1) {
                    button22.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button22.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[21] = activePlayer
        case 23:
            if (gameData[22] == 0) {
                if (activePlayer == 1) {
                    button23.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button23.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[22] = activePlayer
        case 24:
            if (gameData[23] == 0) {
                if (activePlayer == 1) {
                    button24.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button24.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[23] = activePlayer
        case 25:
            if (gameData[24] == 0) {
                if (activePlayer == 1) {
                    button25.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                    activePlayer = 2
                } else {
                    button25.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                    activePlayer = 1
                }
            }
            gameData[24] = activePlayer
        default:
            print("")
        }
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
