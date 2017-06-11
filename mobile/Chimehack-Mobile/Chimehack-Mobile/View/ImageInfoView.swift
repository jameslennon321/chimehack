//
//  ImageInfoView.swift
//  Chimehack-Mobile
//
//  Created by James Lennon on 6/10/17.
//  Copyright © 2017 James Lennon. All rights reserved.
//

import UIKit

class ImageInfoView: UIView {
    
    private let userLangLabel = UILabel()
    private let learnLangLabel = UILabel()
    private let sendButton = UIButton()
    
    init() {
        
        super.init(frame: CGRect.zero)
        
        backgroundColor = UIColor.white
        
        let font = UIFont.systemFont(ofSize: 30)
        
        addSubview(userLangLabel)
        userLangLabel.text = "Apple"
        userLangLabel.font = font
        userLangLabel.sizeToFit()
        userLangLabel.snp.makeConstraints { (make) in
            make.size.equalTo(userLangLabel)
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(10)
        }
        
        addSubview(learnLangLabel)
        learnLangLabel.text = "tafaha"
        learnLangLabel.font = font
        learnLangLabel.sizeToFit()
        learnLangLabel.snp.makeConstraints { (make) in
            make.size.equalTo(learnLangLabel)
            make.left.equalTo(self).offset(20)
            make.top.equalTo(userLangLabel.snp.bottom).offset(10)
        }
        
        addSubview(sendButton)
        sendButton.setImage(#imageLiteral(resourceName: "send"), for: .normal)
        sendButton.addTarget(self, action: #selector(sendPressed), for: .touchUpInside)
        sendButton.snp.makeConstraints { (make) in
            make.width.height.equalTo(30)
            make.right.equalTo(self).inset(20)
            make.top.equalTo(self).offset(30)
        }
        
        let borderView = UIView()
        borderView.backgroundColor = UIColor.lightGray
        addSubview(borderView)
        borderView.snp.makeConstraints { (make) in
            make.left.right.top.equalTo(self)
            make.height.equalTo(1)
        }
        
        let dividerView = UIView()
        dividerView.backgroundColor = UIColor.lightGray
        addSubview(dividerView)
        dividerView.snp.makeConstraints { (make) in
            make.left.right.equalTo(self).inset(30)
            make.height.equalTo(1)
            make.top.equalTo(learnLangLabel.snp.bottom).offset(20)
        }
        
        /* Extra Content */
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sendPressed() {
        
    }
    
}