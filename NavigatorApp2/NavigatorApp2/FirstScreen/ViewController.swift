//
//  ViewController.swift
//  NavigatorApp2
//
//  Created by Diya on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    let firstScreenView = FirstScreenView()
    
    let moods:[String] = ["Happy","Meh","Sad"]
    var selectedMood = "Happy"
    
    public struct DisplayMessage{
        var message : String?
        var mood : String?
        
        init(message: String? = nil, mood: String? = nil) {
            self.message = message
            self.mood = mood
        }
    }
    
    override func loadView() {
        view = firstScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstScreenView.moodPicker.delegate = self
        firstScreenView.moodPicker.dataSource = self
        
        firstScreenView.buttonSubmit.addTarget(self, action: #selector(onButtonSubmit), for: .touchUpInside)
    }
    
    @objc func onButtonSubmit(){
        let msg = firstScreenView.textField.text
        if let unwrappedText = msg {
            if !unwrappedText.isEmpty {
                let displayMessage = DisplayMessage(message: unwrappedText, mood: selectedMood)
                let displayViewController = DisplayViewController()
                displayViewController.recievedDisplayMessage = displayMessage
                navigationController?.pushViewController(displayViewController, animated: true)
            }
            else {
                showErrorAlert()
            }
        }
    }
    
    func showErrorAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Text field cannot be empty",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moods.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedMood = moods[row]
        return moods[row]
    }
}

