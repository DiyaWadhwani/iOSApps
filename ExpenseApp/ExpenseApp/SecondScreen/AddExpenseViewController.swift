//
//  AddExpenseViewController.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import UIKit

class AddExpenseViewController: UIViewController {
    
    var delegate: ViewController!
    var selectedExpense = "Groceries"
    
    let addExpenseView = AddExpenseView()
    
    override func loadView() {
        view = addExpenseView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addExpenseView.expensePicker.delegate = self
        addExpenseView.expensePicker.dataSource = self
        
        addExpenseView.addButton.addTarget(self, action: #selector(addExpenseButtonTapped), for: .touchUpInside)
    }
    
    @objc func addExpenseButtonTapped() {
        
        var titleInput:String?
        var amountInput = 0.0
        
        if let unwrappedTitle = addExpenseView.titleTextField.text{
            if !unwrappedTitle.isEmpty{
                titleInput = unwrappedTitle
            }
            else {
                showTitleAlert()
            }
            
        }
        
        if let unwrappedAmount = addExpenseView.amountTextField.text{
            if !unwrappedAmount.isEmpty{
                if let convertedAmount = Double(unwrappedAmount){
                    amountInput = convertedAmount
                }
                else{
                    return
                }
            }
            else {
                showAmountAlert()
            }
        }
        
        let newExpense = Expense(title: titleInput, amount: amountInput, expenseType: selectedExpense)
        delegate.delegateOnExpense(expense: newExpense)
        navigationController?.popViewController(animated: true)
    }
    
    func showTitleAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Title cannot be empty",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func showAmountAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Title cannot be empty",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

extension AddExpenseViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Utilities.types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedExpense = Utilities.types[row]
        return Utilities.types[row]
    }
}
