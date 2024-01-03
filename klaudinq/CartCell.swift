//
//  CartCell.swift
//  klaudinq
//
//  Created by mehdimagerramov on 09.06.2023.
//

import UIKit

class CartCell: UITableViewCell {
    
    static let identifier = "CartCell"
    
    private let cellImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        return iv
    }()
    
    private let cellTitleLabel: UILabel = {
        let title = UILabel()
        title.textColor = .label
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 24, weight: .medium)
        title.text = "Error"
        return title
    }()
    
    private let cellPriceLabel: UILabel = {
        let price = UILabel()
        price.textColor = .label
        price.textAlignment = .right
        price.font = .systemFont(ofSize: 29, weight: .bold)
        price.text = "Error"
        return price
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(image: String, title: String, price: Double) {
        self.cellImageView.image = UIImage(named: image)
        self.cellTitleLabel.text = title
        self.cellPriceLabel.text = "$\(price)"
    }
    
    private func setupUI() {
        self.contentView.addSubview(cellImageView)
        self.contentView.addSubview(cellTitleLabel)
        self.contentView.addSubview(cellPriceLabel)
        
        cellImageView.translatesAutoresizingMaskIntoConstraints = false
        cellTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        cellPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellImageView.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
            cellImageView.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor),
            cellImageView.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor),
            cellImageView.heightAnchor.constraint(equalToConstant: 90),
            cellImageView.widthAnchor.constraint(equalToConstant: 90),
            
            cellTitleLabel.leadingAnchor.constraint(equalTo: self.cellImageView.trailingAnchor, constant: 16),
            cellTitleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            cellTitleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            
            cellPriceLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 100),
            cellPriceLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -40),
            cellPriceLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10)
        ])
    }
}

//    var cartImageView  = UIImageView()
//    var cartTitleLabel = UILabel()
//    var cartPriceLabel = UILabel()
//    let deleteButton = UIButton()
//    var item: Item?
//    var cartManager: CartManager?
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        configureViews()
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func configureViews() {
//        cartImageView.contentMode = .scaleAspectFit
//                cartImageView.layer.cornerRadius = 10
//                cartImageView.clipsToBounds = true
//                contentView.addSubview(cartImageView)
//
//                cartTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
//                contentView.addSubview(cartTitleLabel)
//
//                cartPriceLabel.font = UIFont.systemFont(ofSize: 14)
//                contentView.addSubview(cartPriceLabel)
//
//                deleteButton.setImage(UIImage(systemName: "trash"), for: .normal)
//                deleteButton.tintColor = UIColor(hue: 1.0, saturation: 0.89, brightness: 0.8355, alpha: 1.0)
//                deleteButton.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
//                contentView.addSubview(deleteButton)
//
//        setupConstraints()
//    }
//
//    func setupConstraints() {
//            cartImageView.translatesAutoresizingMaskIntoConstraints = false
//            cartTitleLabel.translatesAutoresizingMaskIntoConstraints = false
//            cartPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//            deleteButton.translatesAutoresizingMaskIntoConstraints = false
//
//            NSLayoutConstraint.activate([
//                cartImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
//                cartImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//                cartImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
//                cartImageView.widthAnchor.constraint(equalToConstant: 50),
//
//                cartTitleLabel.leadingAnchor.constraint(equalTo: cartImageView.trailingAnchor, constant: 10),
//                cartTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//
//                cartPriceLabel.leadingAnchor.constraint(equalTo: cartImageView.trailingAnchor, constant: 10),
//                cartPriceLabel.topAnchor.constraint(equalTo: cartTitleLabel.bottomAnchor, constant: 10),
//
//                deleteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
//                deleteButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//                deleteButton.widthAnchor.constraint(equalToConstant: 30),
//                deleteButton.heightAnchor.constraint(equalToConstant: 30)
//            ])
//        }
//
//        @objc private func deleteButtonTapped() {
//            guard let item = item else { return }
//            cartManager?.removeCartItem(item: item)
//        }
//    }

   
