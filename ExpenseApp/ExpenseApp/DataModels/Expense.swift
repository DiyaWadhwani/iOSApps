//
//  Expense.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import Foundation

struct Expense {
    var title:String?
    var amount:Double?
    var expenseType:String?
    
    init(title: String? = nil, amount: Double? = nil, expenseType: String? = nil) {
        self.title = title
        self.amount = amount
        self.expenseType = expenseType
    }
}
