//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hansol Kwon on 09/05/2019.
//  Copyright © 2019 Hansol Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let magicBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomMagicBallIndex : Int = 0
    
    @IBOutlet weak var magicBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagicBallImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBallImages()
    }
    
    func updateMagicBallImages() {
        randomMagicBallIndex = Int.random(in: 0 ... 4)
        
        magicBallView.image = UIImage(named: magicBallArray[randomMagicBallIndex])
    }
    
}

