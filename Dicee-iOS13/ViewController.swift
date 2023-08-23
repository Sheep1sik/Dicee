//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceImageArray = [UIImage.init(imageLiteralResourceName: "DiceOne"),UIImage.init(imageLiteralResourceName: "DiceTwo"),UIImage.init(imageLiteralResourceName: "DiceThree"),UIImage.init(imageLiteralResourceName: "DiceFour"),UIImage.init(imageLiteralResourceName: "DiceFive"),UIImage.init(imageLiteralResourceName: "DiceSix")]
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        //WHO          WHAT      VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix") //#imageLiteral()
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = diceImageArray.randomElement()
        diceImageView2.image = diceImageArray.randomElement()
    }

}

