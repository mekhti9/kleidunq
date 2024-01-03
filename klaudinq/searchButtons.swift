//
//  searchButtons.swift
//  klaudinq
//
//  Created by mehdimagerramov on 17.04.2023.
//

import UIKit

class searchButtons: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        
        configuration = .bordered()
        configuration?.baseBackgroundColor = .systemYellow
        configuration?.baseForegroundColor = .brown
        configuration?.cornerStyle = .large
        configuration?.title = title
        configuration?.attributedTitle?.font = .boldSystemFont(ofSize: 15)
        configuration?.buttonSize = .large
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
