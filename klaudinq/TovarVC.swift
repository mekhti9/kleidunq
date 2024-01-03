//
//  TovarVC.swift
//  klaudinq
//
//  Created by mehdimagerramov on 28.04.2023.
//  описание товара

import UIKit

class TovarVC: UIViewController {
    var cartManager = CartManager()
    let cart = CartVC()
    var selectedItem: Item!
    let scrollView = UIScrollView()
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let price = UILabel()
    let addToCart = searchButtons(title: "ADD TO CART")
    let description1Label = UILabel()
    let description2Label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        scroll()
        imConf()
        titleConf()
        priceConf()
        addToCartButtonConf()
        description1Conf()
        description2Conf()
    }
    
    func scroll() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1440)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func imConf() {
        scrollView.addSubview(imageView)
        imageView.image = UIImage(named: selectedItem.imageName)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            imageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 430),
            imageView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func titleConf() {
        scrollView.addSubview(titleLabel)
        titleLabel.text = selectedItem.title
        titleLabel.font = .boldSystemFont(ofSize: 40)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -10),
            titleLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    func priceConf() {
        scrollView.addSubview(price)
        price.text = "$\(selectedItem.price)"
        price.font = .systemFont(ofSize: 50, weight: .bold)
        price.textAlignment = .center
        price.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            price.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            price.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    func addToCartButtonConf() {
        scrollView.addSubview(addToCart)
        addToCart.translatesAutoresizingMaskIntoConstraints = false
        addToCart.addTarget(self, action: #selector(addToCartTarget), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            addToCart.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 20),
            addToCart.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            addToCart.heightAnchor.constraint(equalToConstant: 80),
            addToCart.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    @objc func addToCartTarget() {
        cartManager.addCartItem(item: selectedItem)
        let alert = UIAlertController(title: "Added to Cart", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func description1Conf() {
        scrollView.addSubview(description1Label)
        description1Label.text = selectedItem.description1
        description1Label.font = .systemFont(ofSize: 30, weight: .bold)
        description1Label.textAlignment = .center
        description1Label.translatesAutoresizingMaskIntoConstraints = false
        description1Label.numberOfLines = .max

        NSLayoutConstraint.activate([
            description1Label.topAnchor.constraint(equalTo: addToCart.bottomAnchor, constant: 50),
            description1Label.centerXAnchor.constraint(equalTo: imageView.centerXAnchor)
        ])
    }
    
    func description2Conf() {
        scrollView.addSubview(description2Label)
        description2Label.text = selectedItem.description2
        description2Label.translatesAutoresizingMaskIntoConstraints = false
        description2Label.textAlignment = .center
        description2Label.font = .boldSystemFont(ofSize: 20)
        description2Label.numberOfLines = .max
        
        NSLayoutConstraint.activate([
            description2Label.widthAnchor.constraint(equalToConstant: 300),
            description2Label.topAnchor.constraint(equalTo: description1Label.bottomAnchor, constant: 40),
            description2Label.centerXAnchor.constraint(equalTo: imageView.centerXAnchor)
        ])
    }
}


