//
//  FirstScreenView.swift
//  NavigatorApp2
//
//  Created by Diya on 9/25/23.
//

import UIKit

class FirstScreenView: UIView {
    
    var appLabel : UILabel!
    var textField : UITextField!
    var messageLabel : UILabel!
    var moodPicker : UIPickerView!
    var buttonSubmit : UIButton!

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupAppLabel()
        setupTextField()
        setupMessageLabel()
        setupMoodPicker()
        setupButtonSubmit()
        
        initConstraints()
        
    }
    
    
    func setupAppLabel(){
        appLabel = UILabel()
        appLabel.text = "App 4"
        
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(appLabel)
    }
    
    func setupTextField(){
        textField = UITextField()
        textField.placeholder = "Enter some text here"
        textField.borderStyle = .roundedRect
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textField)
    }
    
    func setupMessageLabel(){
        messageLabel = UILabel()
        messageLabel.text = "How are you feeling today ?"
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(messageLabel)
    }
    
    func setupMoodPicker(){
        moodPicker = UIPickerView()
        moodPicker.isUserInteractionEnabled = true
        
        moodPicker.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(moodPicker)
    }
    
    func setupButtonSubmit(){
        buttonSubmit = UIButton(type: .system)
        buttonSubmit.setTitle("Submit", for: .normal)
        
        buttonSubmit.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSubmit)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            appLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            appLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            textField.topAnchor.constraint(equalTo: appLabel.bottomAnchor, constant: 16),
            textField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            messageLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
            messageLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            moodPicker.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
            moodPicker.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSubmit.topAnchor.constraint(equalTo: moodPicker.bottomAnchor, constant: 16),
            buttonSubmit.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
