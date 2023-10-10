//
//  ViewController.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    let firstScreenView = FirstScreenView()
    
    var expenses = [Expense]()
//    let types = ["Groceries", "Rent", "Subscriptions", "Electronics"]
    
    override func loadView() {
        view = firstScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Expense App"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        
        firstScreenView.tableViewExpense.delegate = self
        firstScreenView.tableViewExpense.dataSource = self
        
//        expenses.append(Expense(title: "One Plus 9", amount: 750.0, type: types[3]))
//        expenses.append(Expense(title: "Iphone SE", amount: 350.0, type: types[3]))
//        expenses.append(Expense(title: "Netflix", amount: 75.0, type: types[2]))
//        expenses.append(Expense(title: "Target", amount: 50.82, type: types[0]))
        
    }
    
    @objc func addButtonTapped() {
        
        let addExpenseController = AddExpenseViewController()
        addExpenseController.delegate = self
        navigationController?.pushViewController(addExpenseController, animated: true)
    }
    
    func delegateOnExpense(expense: Expense){
        expenses.append(expense)
        firstScreenView.tableViewExpense.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenses", for: indexPath) as! TableViewExpenseCell
        cell.titleLabel.text = expenses[indexPath.row].title
        
        if let uwAmount = expenses[indexPath.row].amount{
            cell.amountLabel.text = "Cost: $\(uwAmount)"
        }
        if let uwType = expenses[indexPath.row].expenseType{
            cell.typeLabel.text = "Type: \(uwType)"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.expenses[indexPath.row])
        let displayViewController = DisplayViewController()
        displayViewController.selectedExpense = self.expenses[indexPath.row]
        navigationController?.pushViewController(displayViewController, animated: true)
    }
}

