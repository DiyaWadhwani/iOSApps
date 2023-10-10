//
//  DisplayView.swift
//  NavigatorApp2
//
//  Created by Diya on 9/25/23.
//

import UIKit

class DisplayView: UIView {
    
    var messageLabel:UILabel!
    var moodLabel:UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupMessageLabel()
        setupMoodLabel()
        
        initConstraints()
        
    }
    
    func setupMessageLabel(){
        messageLabel = UILabel()
        messageLabel.textAlignment = .left
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(messageLabel)
    }
    
    func setupMoodLabel(){
        moodLabel = UILabel()
        moodLabel.textAlignment = .left
        
        moodLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(moodLabel)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            messageLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            messageLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            
            moodLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
            moodLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
