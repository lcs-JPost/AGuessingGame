 //
//  ViewController.swift
//  AGuessingGame
//
//  Created by Justus Post on 2019-09-30.
//  Copyright © 2019 Justus Post. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    //MARK: Initializers
    
    
    //MARK: Methods (fuctions) - Behaviors
    
    // Runs as soon as the view becomes visible for the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object called synthesiser, which is an instance of the
        // class 'AVspeechSythesizer'\
        let Synthesizer = AVSpeechSynthesizer()
        
        // Make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is. "
        
        // Make an Object named 'utterance', which is an instance of the
        // class 'AVspeechUtterance'
        var utterance = AVSpeechUtterance(string: message)
        
        // Speek the message
        Synthesizer.speak(utterance)
    }


}

