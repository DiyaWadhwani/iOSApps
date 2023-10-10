//
//  ShowViewController.swift
//  NavigatorApp1
//
//  Created by Diya on 9/22/23.
//

import UIKit

class ShowViewController: UIViewController {
    
    
    var textFromPrevScreen:String? = "No message recieved"
    var delegate: ViewController!
    
    let moods:[String] = ["Happy","Meh","Sad"]
    var selectedMood = "Happy"

    var labelMessage : UILabel!
    
    var labelMoodInstructions : UILabel!
    var moodPicker : UIPickerView!
    var buttonSendMood : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        setupLabelMessage()
        
        setupLabelMoodInstructions()
        setupMoodPicker()
        setupButtonSendMood()
        
        initConstraints()
        
        buttonSendMood.addTarget(self, action: #selector(onTappedSendMood), for: .touchUpInside)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupLabelMessage() {
        labelMessage = UILabel()
        labelMessage.text = textFromPrevScreen
        labelMessage.textColor = .systemBlue
        labelMessage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelMessage)
    }
    
    func setupLabelMoodInstructions(){
        labelMoodInstructions = UILabel()
        labelMoodInstructions.text = "How are you feeling today?"
        labelMoodInstructions.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelMoodInstructions)
    }
    
    func setupMoodPicker(){
        moodPicker = UIPickerView()
        moodPicker.isUserInteractionEnabled = true
        moodPicker.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(moodPicker)
        
        moodPicker.delegate = self
        moodPicker.dataSource = self
    }
    
    func setupButtonSendMood(){
        buttonSendMood = UIButton(type: .system)
        buttonSendMood.setTitle("Send mood back", for: .normal)
        
        buttonSendMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSendMood)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            labelMessage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelMessage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            labelMoodInstructions.topAnchor.constraint(equalTo: labelMessage.bottomAnchor, constant: 32),
            labelMoodInstructions.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            moodPicker.topAnchor.constraint(equalTo: labelMoodInstructions.bottomAnchor, constant: 16),
            moodPicker.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSendMood.topAnchor.constraint(equalTo: moodPicker.bottomAnchor, constant: 25),
            buttonSendMood.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
}

extension ShowViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    
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
    
    @objc func onTappedSendMood(){
        delegate.delegateSendMoodButton(mood: selectedMood)
        navigationController?.popViewController(animated: true)
     }
    
}
