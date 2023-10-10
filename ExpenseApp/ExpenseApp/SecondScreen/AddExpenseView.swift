//
//  AddExpenseView.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import UIKit

class AddExpenseView: UIView {

    var titleTextField: UITextField!
    var amountTextField: UITextField!
    var selectLabel: UILabel!
    var expensePicker: UIPickerView!
    var addButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setupTitleTextField()
        setupAmountTextField()
        setupSelectLabel()
        setupExpensePicker()
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
    
    func setupSelectLabel() {
        selectLabel = UILabel()
        selectLabel.textColor = .systemGray
        selectLabel.text = "Select the type of expense"
        selectLabel.textAlignment = .center
        
        selectLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(selectLabel)
    }
    
    func setupExpensePicker() {
        expensePicker = UIPickerView()
        
        expensePicker.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(expensePicker)
    }
    
    func setupAddButton() {
        addButton = UIButton(type: .system)
        addButton.setTitle("Add Expense", for: .normal)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addButton)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            
            titleTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            titleTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            amountTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 16),
            amountTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            selectLabel.topAnchor.constraint(equalTo: amountTextField.bottomAnchor, constant: 16),
            selectLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            expensePicker.topAnchor.constraint(equalTo: selectLabel.bottomAnchor, constant: 8),
            expensePicker.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            addButton.topAnchor.constraint(equalTo: expensePicker.bottomAnchor, constant: 16),
            addButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
