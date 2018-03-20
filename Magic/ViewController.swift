//
//  ViewController.swift
//  Magic
//
//  Created by Coraline Sherratt on 2018-03-20.
//  Copyright © 2018 cora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playerOneScore: Int = 20 {
        didSet {
            self.playerOne?.text = "\(playerOneScore)"
        }
    }
    var playerTwoScore: Int = 20 {
        didSet {
            self.playerTwo?.text = "\(playerTwoScore)"
        }
    }
    
    @IBOutlet weak var playerOne: UILabel?
    @IBOutlet weak var playerOneUpButton: UIButton!
    @IBOutlet weak var playerOneDownButton: UIButton!
    @IBOutlet weak var playerTwo: UILabel?
    
    @IBAction func playerOneUp(_ sender: Any) {
        playerOneScore += 1
        
    }

    @IBAction func playerOneDown(_ sender: Any) {
        playerOneScore -= 1
    }
    
    @IBAction func playerTwoUp(_ sender: Any) {
        playerTwoScore += 1
    }

    @IBAction func playerTwoDown(_ sender: Any) {
        playerTwoScore -= 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerOne?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        playerOneUpButton?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        playerOneDownButton?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

