//
//  ViewController.swift
//  klaudinq
//
//  Created by mehdimagerramov on 17.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    let scrollView = UIScrollView()
    let image1 = UIImageView()
    let image2 = UIImageView()
    let image3 = UIImageView()
    let image4 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        callUI()
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
                image1.isUserInteractionEnabled = true
                image1.addGestureRecognizer(tapGestureRecognizer1)
        
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
                image2.isUserInteractionEnabled = true
                image2.addGestureRecognizer(tapGestureRecognizer2)
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
                image3.isUserInteractionEnabled = true
                image3.addGestureRecognizer(tapGestureRecognizer3)
        
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
                image4.isUserInteractionEnabled = true
                image4.addGestureRecognizer(tapGestureRecognizer4)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
           self.navigationController?.pushViewController(ProductsVC(), animated: true)
       }
    
    func callUI() {
        scroll()
        image1Conf()
        image2Conf()
        image3Conf()
        image4Conf()
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
    
    func image1Conf() {
        scrollView.addSubview(image1)
        image1.image = UIImage(named: "obez")
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image1.heightAnchor.constraint(equalToConstant: 100),
            image1.widthAnchor.constraint(equalToConstant: 100),
            image1.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
            image1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    func image2Conf() {
        scrollView.addSubview(image2)
        image2.image = UIImage(named: "im77")
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.layer.cornerRadius = 15
        image2.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            image2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            image2.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 70),
            image2.heightAnchor.constraint(equalToConstant: 100),
            image2.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    
    func image3Conf() {
        scrollView.addSubview(image3)
        image3.image = UIImage(named: "im6")
        image3.translatesAutoresizingMaskIntoConstraints = false
        image3.layer.cornerRadius = 15
        image3.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            image3.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            image3.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 80),
            image3.widthAnchor.constraint(equalToConstant: 350),
            image3.heightAnchor.constraint(equalToConstant: 450)
        ])
    }
    
    func image4Conf() {
        scrollView.addSubview(image4)
        image4.image = UIImage(named: "im5")
        image4.translatesAutoresizingMaskIntoConstraints = false
        image4.layer.cornerRadius = 15
        image4.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            image4.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            image4.topAnchor.constraint(equalTo: image3.bottomAnchor, constant: 80),
            image4.widthAnchor.constraint(equalToConstant: 350),
            image4.heightAnchor.constraint(equalToConstant: 470)
        ])
    }
}

