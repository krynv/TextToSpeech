//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Vitaliy Krynytskyy on 19/01/2018.
//  Copyright © 2018 Vitaliy Krynytskyy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        textField.delegate = self
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textToSpeech(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: textField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance.rate = 0.5
        
        let syntehsiser = AVSpeechSynthesizer()
        syntehsiser.speak(utterance)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

