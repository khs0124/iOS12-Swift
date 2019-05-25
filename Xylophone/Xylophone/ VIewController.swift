//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let audioSound = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName : audioSound[sender.tag - 1])
    }
    
    func playSound(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf : soundURL!)
        }
        catch {
            print(error)
        }
        
        /*
         try! audioPlayer = AVAudioPlayer(contentsOf: soundURL!) : Use when this statment will never throw an error.
         */
        
        audioPlayer.play()
    }
    
}

