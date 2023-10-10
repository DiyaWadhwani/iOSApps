//
//  DisplayExpenseView.swift
//  ExpenseApp2
//
//  Created by Diya on 10/8/23.
//

import UIKit

class DisplayExpenseView: UIView {
    
    var titleLabel: UILabel!
    var amountLabel: UILabel!
    var expenseTypeLabel: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupTitleLabel()
        setupAmountLabel()
        setupExpenseTypeLabel()
        
        initConstraints()
        
    }
    
    func setupTitleLabel(){
        titleLabel = UILabel()
        titleLabel.textAlignment = .left
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
    }
    
    func setupAmountLabel(){
        amountLabel = UILabel()
        amountLabel.textAlignment = .left
        
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(amountLabel)
    }
    
    func setupExpenseTypeLabel() {
        expenseTypeLabel = UILabel()
        expenseTypeLabel.textAlignment = .left
        
        expenseTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(expenseTypeLabel)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            amountLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            amountLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            expenseTypeLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 16),
            expenseTypeLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

