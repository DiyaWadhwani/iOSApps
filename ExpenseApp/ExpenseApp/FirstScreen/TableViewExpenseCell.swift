//
//  TableViewExpenseCellTableViewCell.swift
//  ExpenseApp
//
//  Created by Diya on 10/2/23.
//

import UIKit

class TableViewExpenseCell: UITableViewCell {
    
    var wrapperCellView: UIView!
    var titleLabel: UILabel!
    var amountLabel: UILabel!
    var typeLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWrapperCellView()
        setupTitleLabel()
        setupAmountLabel()
        setupTypeLabel()
        initConstraints()
    }
    
    func setupWrapperCellView() {
        wrapperCellView = UITableViewCell()
        
        wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(wrapperCellView)
    }
    
    func setupTitleLabel() {
        titleLabel = UILabel()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(titleLabel)
    }
    
    func setupAmountLabel() {
        amountLabel = UILabel()
        
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(amountLabel)
    }
    
    func setupTypeLabel() {
        typeLabel = UILabel()
        
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(typeLabel)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            wrapperCellView.topAnchor.constraint(equalTo: self.topAnchor),
            wrapperCellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            wrapperCellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            wrapperCellView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            wrapperCellView.heightAnchor.constraint(equalToConstant: 100),
            
            titleLabel.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 4),
            titleLabel.heightAnchor.constraint(equalToConstant: 20),
            
            amountLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            amountLabel.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 4),
            amountLabel.heightAnchor.constraint(equalToConstant: 20),
            
            typeLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 4),
            typeLabel.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 4),
            typeLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

}
