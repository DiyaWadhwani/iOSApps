//
//  TableViewExpenseCell.swift
//  ExpenseApp2
//
//  Created by Diya on 10/8/23.
//

import UIKit

class TableViewExpenseCell: UITableViewCell {
    
    var wrapperCellView: UIView!
    var titleLabel: UILabel!
    var amountLabel: UILabel!
    var typeLabel: UILabel!
    var imageReceipt: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWrapperCellView()
        setupTitleLabel()
        setupAmountLabel()
        setupTypeLabel()
        setupImageReceipt()
        
        initConstraints()
    }
    
    func setupWrapperCellView() {
        wrapperCellView = UITableViewCell()
        wrapperCellView.backgroundColor = .white
        wrapperCellView.layer.cornerRadius = 10
        wrapperCellView.layer.shadowColor = UIColor.gray.cgColor
        wrapperCellView.layer.shadowOffset = .zero
        wrapperCellView.layer.shadowRadius = 6.0
        wrapperCellView.layer.shadowOpacity = 0.7
        
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
    
    func setupImageReceipt() {
        imageReceipt = UIImageView()
        imageReceipt.image = UIImage(systemName: "photo")
        imageReceipt.contentMode = .scaleToFill
        imageReceipt.clipsToBounds = true
        imageReceipt.layer.cornerRadius = 10
        
        imageReceipt.translatesAutoresizingMaskIntoConstraints = false
        wrapperCellView.addSubview(imageReceipt)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            wrapperCellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            wrapperCellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            wrapperCellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            wrapperCellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            titleLabel.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 2),
            titleLabel.leadingAnchor.constraint(equalTo: imageReceipt.trailingAnchor, constant: 8),
            titleLabel.heightAnchor.constraint(equalToConstant: 32),
            titleLabel.widthAnchor.constraint(lessThanOrEqualTo: wrapperCellView.widthAnchor),
            
            amountLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            amountLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            amountLabel.heightAnchor.constraint(equalToConstant: 32),
            amountLabel.widthAnchor.constraint(lessThanOrEqualTo: titleLabel.widthAnchor),
            
            typeLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 2),
            typeLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            typeLabel.heightAnchor.constraint(equalToConstant: 32),
            typeLabel.widthAnchor.constraint(lessThanOrEqualTo: titleLabel.widthAnchor),
            
            imageReceipt.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 8),
            imageReceipt.centerYAnchor.constraint(equalTo: wrapperCellView.centerYAnchor),
            imageReceipt.heightAnchor.constraint(equalTo: wrapperCellView.heightAnchor, constant: -20),
            imageReceipt.widthAnchor.constraint(equalTo: wrapperCellView.heightAnchor, constant: -20),
            
            wrapperCellView.heightAnchor.constraint(equalToConstant: 104)
            
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
