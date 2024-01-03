//
//  MenuCollectionViewCell.swift
//  klaudinq
//
//  Created by mehdimagerramov on 28.04.2023.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    var imageView = UIImageView()
    var nameLabel = UILabel()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        addSubview(nameLabel)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = .boldSystemFont(ofSize: 14)
        nameLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor)
            ])
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
