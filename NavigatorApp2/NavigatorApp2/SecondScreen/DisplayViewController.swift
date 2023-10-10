//
//  DisplayViewController.swift
//  NavigatorApp2
//
//  Created by Diya on 9/25/23.
//

import UIKit

class DisplayViewController: UIViewController {
    
    let displayView = DisplayView()
    
    override func loadView() {
        view = displayView
    }
    
    var recievedDisplayMessage: ViewController.DisplayMessage = ViewController.DisplayMessage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unwrappedMessage = recievedDisplayMessage.message{
            if !unwrappedMessage.isEmpty {
                displayView.messageLabel.text = "Your message is : \(unwrappedMessage)"
            }
        }
        
        if let unwrappedMood = recievedDisplayMessage.mood {
            if !unwrappedMood.isEmpty {
                displayView.moodLabel.text = "You are feeling \(unwrappedMood)"
            }
        }
    }

}
