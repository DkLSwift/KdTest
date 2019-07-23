//
//  KardHomeCell.swift
//  Kd_test
//
//  Created by Eric DkL on 23/07/2019.
//  Copyright © 2019 Eric DkL. All rights reserved.
//

import UIKit

class KardHomeCell: UITableViewCell {
    
    let icon = UIImageView()
    
    let companyName = UILabel()
    let companyDesc = UILabel()
    
    let amount = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        companyName.font = .boldSystemFont(ofSize: 18)
        companyDesc.font = .systemFont(ofSize: 14)
        companyDesc.textColor = .lightGray
        amount.font = .systemFont(ofSize: 22)
        amount.textColor = .lightGray
        
        [companyName, amount].forEach( {
            $0.adjustsFontSizeToFitWidth = true
            $0.minimumScaleFactor = 0.8
        })
        
        let vStack = UIStackView(arrangedSubviews: [companyName, companyDesc])
        vStack.axis = .vertical
        vStack.spacing = 8
        
        icon.constrainWidth(constant: 60)
        icon.constrainHeight(constant: 60)
        amount.constrainHeight(constant: 60)
        let hStack = UIStackView(arrangedSubviews:
            [icon,
            vStack,
            UIView(),
            amount])
        hStack.spacing = 20
        addSubview(hStack)
        hStack.fillSuperview(padding: .init(top: 0, left: 20, bottom: 0, right: 40))
        hStack.alignment = .center
        
    }
}
