//
//  Expense.swift
//  ExpenseApp2
//
//  Created by Diya on 10/8/23.
//

import Foundation
import UIKit

struct Expense {
    var title:String?
    var amount:Double?
    var expenseType:String?
    var image:UIImage?
    
    init(title: String? = nil, amount: Double? = nil, expenseType: String? = nil, image: UIImage? = nil) {
        self.title = title
        self.amount = amount
        self.expenseType = expenseType
        self.image = image
    }
}
