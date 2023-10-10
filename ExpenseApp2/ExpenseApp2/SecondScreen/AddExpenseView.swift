//
//  AddExpenseView.swift
//  ExpenseApp2
//
//  Created by Diya on 10/8/23.
//

import UIKit

class AddExpenseView: UIView {

    var titleTextField: UITextField!
    var amountTextField: UITextField!
    var selectTypeButton: UIButton!
    var choosePhotoButton: UIButton!
    var addButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setupTitleTextField()
        setupAmountTextField()
        setupSelectTypeButton()
        setupChoosePhotoButton()
        setupAddButton()
        
        initConstraints()
    }
    
    func setupTitleTextField() {
        titleTextField = UITextField()
        titleTextField.placeholder = "Enter title"
        
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleTextField)
    }
    
    func setupAmountTextField() {
        amountTextField = UITextField()
        amountTextField.placeholder = "Enter amount"
        
        amountTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(amountTextField)
    }
    
    func setupSelectTypeButton() {
        selectTypeButton = UIButton(type: .system)
        selectTypeButton.setTitle("Select Expense Type", for: .normal)
        selectTypeButton.showsMenuAsPrimaryAction = true
        
        selectTypeButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(selectTypeButton)
    }
    
    func setupChoosePhotoButton() {
        choosePhotoButton = UIButton(type: .system)
        choosePhotoButton.setTitle("", for: .normal)
        choosePhotoButton.setImage(UIImage(systemName: "photo.fill"), for: .normal)
        choosePhotoButton.contentHorizontalAlignment = .fill
        choosePhotoButton.contentVerticalAlignment = .fill
        choosePhotoButton.imageView?.contentMode = .scaleAspectFit
        choosePhotoButton.showsMenuAsPrimaryAction = true
        
        choosePhotoButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(choosePhotoButton)
    }
    
    func setupAddButton() {
        addButton = UIButton(type: .system)
        addButton.setTitle("Add Expense", for: .normal)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addButton)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            
            titleTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            amountTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 25),
            amountTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            selectTypeButton.topAnchor.constraint(equalTo: amountTextField.bottomAnchor, constant: 25),
            selectTypeButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            choosePhotoButton.topAnchor.constraint(equalTo: selectTypeButton.bottomAnchor, constant: 25),
            choosePhotoButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            choosePhotoButton.widthAnchor.constraint(equalToConstant: 100),
            choosePhotoButton.heightAnchor.constraint(equalToConstant: 100),
        
            addButton.topAnchor.constraint(equalTo: choosePhotoButton.bottomAnchor, constant: 25),
            addButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
