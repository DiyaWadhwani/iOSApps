//
//  DisplayViewController.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import UIKit

class DisplayViewController: UIViewController {
    
    let displayExpense = DisplayExpense()
    
    override func loadView() {
        view = displayExpense
    }
    
    var selectedExpense = Expense()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unwrappedTitle = selectedExpense.title{
            if !unwrappedTitle.isEmpty {
                displayExpense.titleLabel.text = "Title: \(unwrappedTitle)"
            }
        }
        
        if let unwrappedAmount = selectedExpense.amount {
            if !unwrappedAmount.isNaN{
                displayExpense.amountLabel.text = "Cost: $\(unwrappedAmount)"
            }
        }
        
        if let unwrappedExpenseType = selectedExpense.expenseType{
            if !unwrappedExpenseType.isEmpty{
                displayExpense.expenseTypeLabel.text = "Expense Type: \(unwrappedExpenseType)"
            }
        }
    }

}
