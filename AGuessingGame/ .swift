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
        
        speak(message: "I'm thinking of a number between 1 and 100, guess what it is")
        
        // Report the target Number to the Console for testing
        print("For Testing Purpose, the random Number is \(targetNumber)")
        
        
    }

    // will be used to check Guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess vlaue from the Text field
        guard let guessText = submittedGuess.text else {
            
            speak(message: "Bro, try entering a value?")
            return
            
         }
        
        // Try to convert the String into an Integer Data Type
        guard let guessNumber = Int(guessText) else {
            
            speak(message: "Hey, how about entering a Number")
            return
            
        }
        
        // For testing purpose, what was the guessNumber
        print("For testing purpose, the guessed Number is \(guessNumber)")
        
        
        
        // Give Feedback to the user
        if guessNumber < targetNumber {
            print("guess higher next time")
            speak(message: "guess higher next time")
        } else if guessNumber > targetNumber {
            print("guess lower next time")
            speak(message: "guess lower next time")
        } else {
            print("You are correct")
            speak(message: "You are correct")
        }

    }
    
    // A Function that will speak whatever message is provided
    func speak(message: String)  {
        
        // Make an object called synthesiser, which is an instance of the
        // class 'AVspeechSythesizer'\
        let Synthesizer = AVSpeechSynthesizer()
 
        // Make an Object named 'utterance', which is an instance of the
        // class 'AVspeechUtterance'
        let utterance = AVSpeechUtterance(string: message)
        
        // Speek the message
        Synthesizer.speak(utterance)
    }
    
    
 }
