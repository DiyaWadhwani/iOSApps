//
//  ViewController.swift
//  NavigatorApp1
//
//  Created by Diya on 9/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    var textField : UITextField!
    var buttonSend : UIButton!
    
    var labelMood : UILabel!
    var imageMood : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupTextField()
        setupButtonSend()
        
        setupLabelMood()
        setupImageMood()
        
        initConstraints()
    }
    
    func setupTextField(){
        textField = UITextField()
        textField.placeholder = "Enter text here"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField)
    }
    
    func setupButtonSend(){
        buttonSend = UIButton(type: .system)
        buttonSend.setTitle("Send", for: .normal)
        buttonSend.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSend)
        
        buttonSend.addTarget(self, action: #selector(onButtonTapped), for: .touchUpInside)
    }
    
    func setupLabelMood(){
        labelMood = UILabel()
        
        labelMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelMood)
    }
    
    func setupImageMood(){
        imageMood = UIImageView()
        
        imageMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageMood)
        
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            textField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSend.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
            buttonSend.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            labelMood.topAnchor.constraint(equalTo: buttonSend.bottomAnchor, constant: 16),
            labelMood.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            imageMood.topAnchor.constraint(equalTo: labelMood.bottomAnchor, constant: 16),
            imageMood.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    @objc func onButtonTapped() {
        let showViewController = ShowViewController()
    
        if let unwrappedText = textField.text{
            if !unwrappedText.isEmpty {
                showViewController.textFromPrevScreen = unwrappedText
            }
            else {
                showErrorAlert()
            }
        }
        showViewController.delegate = self
        navigationController?.pushViewController(showViewController, animated: true)
    }
    
    func delegateSendMoodButton(mood: String){
        imageMood.image = UIImage(named: mood.lowercased())
        print("The user's mood is \(mood)")
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



