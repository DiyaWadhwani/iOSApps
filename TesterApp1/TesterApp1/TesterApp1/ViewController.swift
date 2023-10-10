//
//  ViewController.swift
//  TesterApp1
//
//  Created by Diya on 9/21/23.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var buttonClick: UIButton!
//    @IBOutlet weak var textField: UITextField!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        buttonClick.addTarget(self, action: #selector(onClickedButton), for: .touchUpInside)
//    }
//    
//    @objc func onClickedButton (){
//        let text = textField.text
//        if let unwrappedText = text {
//            if(unwrappedText.isEmpty){
//                showErrorAlert()
//            }
//            else{
//                showTextAlert(text: unwrappedText)
//            }
//        }
//        print("Button Clicked !")
//    }
//    
//    func showErrorAlert(){
//        let alert = UIAlertController(
//            title: "Error !",
//            message: "Text field must not be empty",
//            preferredStyle: .alert
//        )
//        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        self.present(alert, animated: true)
//    }
//    
//    func showTextAlert(text:String){
//        let alert = UIAlertController(
//            title: "You said :",
//            message: "\(text)",
//            preferredStyle: .alert
//        )
//        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        self.present(alert, animated: true)
//    }
    
    
    var labelHello:UILabel
    var textFieldInput:UITextField!
    var buttonClick:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabelHello()
        setupTextFieldInput()
        setupButtonClick()
        initConstraints()
        
        buttonClick.addTarget(self, action: #selector(onClickAction), for: .touchUpInside)
        
    }
    
    func setupLabelHello(){
        labelHello = UILabel()
        labelHello.text = "New Label"
        labelHello.font = UIFont.systemFont(ofSize: 32)
        labelHello.textColor = .systemBlue
        labelHello.textAlignment = .center
        labelHello.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelHello)
    }
    
    func setupTextFieldInput(){
        textFieldInput = UITextField()
        textFieldInput.placeholder = "Write your text here"
        textFieldInput.borderStyle = .roundedRect
        textFieldInput.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textFieldInput)
    }
    
    func setupButtonClick(){
        buttonClick = UIButton(type: .system)
        buttonClick.setTitle("Submit", for: .normal)
        buttonClick.tintColor = .blue
        buttonClick.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonClick)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            labelHello.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelHello.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            textFieldInput.topAnchor.constraint(equalTo: labelHello.bottomAnchor, constant: 16),
            textFieldInput.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            buttonClick.topAnchor.constraint(equalTo: textFieldInput.bottomAnchor, constant: 16),
            buttonClick.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    @objc func onClickAction (){
            let text = textFieldInput.text
            if let unwrappedText = text {
                if(unwrappedText.isEmpty){
                    showErrorAlert()
                }
                else{
                    showTextAlert(text: unwrappedText)
                }
            }
            print("Button Clicked !")
        }
    
        func showErrorAlert(){
            let alert = UIAlertController(
                title: "Error !",
                message: "Text field must not be empty",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
    
        func showTextAlert(text:String){
            let alert = UIAlertController(
                title: "You said :",
                message: "\(text)",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }

}

