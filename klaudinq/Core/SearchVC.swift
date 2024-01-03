//
//  SearchVC.swift
//  klaudinq
//
//  Created by mehdimagerramov on 17.04.2023.
//

import UIKit

class SearchVC: UIViewController {
    let scrollView = UIScrollView()
    let searchBar = UISearchBar()
    let sneakers = searchButtons(title: "SNEAKERS")
    let accessories = searchButtons(title: "ACCESSORIES")
    let pants = searchButtons(title: "PANTS")
    let boots = searchButtons(title: "BOOTS")
    let all = searchButtons(title: "SHOW ALL")
    let tops = searchButtons(title: "TOPS")
    let streetWear = searchButtons(title: "STREETWEAR")
    let homeWear = searchButtons(title: "HOMEWEAR")
    let tactical = searchButtons(title: "TACTICAL")
    let shorts = searchButtons(title: "SHORTS")
    
    override func viewDidLoad() {
        searchBar.delegate = self
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    func configure() {
        scroll()
        allButton()
        sneakersButton()
        accessoriesButton()
        pantsButton()
        bootsButton()
        topsButton()
        shortsButton()
        homeWearButton()
        streetWearButton()
        tacticalWearButton()
        searchSetup()
    }
    
    func scroll() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1030)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func searchSetup() {
        view.addSubview(searchBar)
    }
    
    func allButton() {
        scrollView.addSubview(all)
        all.translatesAutoresizingMaskIntoConstraints = false
        all.addTarget(self, action: #selector(allproducts), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            all.widthAnchor.constraint(equalToConstant: 330),
            all.heightAnchor.constraint(equalToConstant: 100),
            all.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 150),
            all.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }
    
    @objc func allproducts() {
        let prVC = ProductsVC()
        self.navigationController?.pushViewController(prVC, animated: true)
    }

    func sneakersButton() {
        scrollView.addSubview(sneakers)
        sneakers.translatesAutoresizingMaskIntoConstraints = false
        sneakers.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            sneakers.widthAnchor.constraint(equalToConstant: 150),
            sneakers.heightAnchor.constraint(equalToConstant: 100),
            sneakers.topAnchor.constraint(equalTo: all.bottomAnchor, constant: 20),
            sneakers.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }
    
    func accessoriesButton() {
        scrollView.addSubview(accessories)
        accessories.translatesAutoresizingMaskIntoConstraints = false
        accessories.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            accessories.widthAnchor.constraint(equalToConstant: 150),
            accessories.heightAnchor.constraint(equalToConstant: 100),
            accessories.topAnchor.constraint(equalTo: all.bottomAnchor, constant: 20),
            accessories.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 210)
        ])
    }

    func pantsButton() {
        scrollView.addSubview(pants)
        pants.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            pants.widthAnchor.constraint(equalToConstant: 150),
            pants.heightAnchor.constraint(equalToConstant: 100),
            pants.topAnchor.constraint(equalTo: sneakers.bottomAnchor, constant: 20),
            pants.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }

    func bootsButton() {
        scrollView.addSubview(boots)
        boots.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            boots.widthAnchor.constraint(equalToConstant: 150),
            boots.heightAnchor.constraint(equalToConstant: 100),
            boots.topAnchor.constraint(equalTo: accessories.bottomAnchor, constant: 20),
            boots.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 210)
        ])
    }
    
    func topsButton() {
        scrollView.addSubview(tops)
        tops.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            tops.widthAnchor.constraint(equalToConstant: 150),
            tops.heightAnchor.constraint(equalToConstant: 100),
            tops.topAnchor.constraint(equalTo: pants.bottomAnchor, constant: 20),
            tops.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }

    func shortsButton() {
        scrollView.addSubview(shorts)
        shorts.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            shorts.widthAnchor.constraint(equalToConstant: 150),
            shorts.heightAnchor.constraint(equalToConstant: 100),
            shorts.topAnchor.constraint(equalTo: boots.bottomAnchor, constant: 20),
            shorts.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 210)
        ])
    }
    
    func homeWearButton() {
        scrollView.addSubview(homeWear)
        homeWear.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            homeWear.widthAnchor.constraint(equalToConstant: 150),
            homeWear.heightAnchor.constraint(equalToConstant: 100),
            homeWear.topAnchor.constraint(equalTo: tops.bottomAnchor, constant: 20),
            homeWear.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }

    func streetWearButton() {
        scrollView.addSubview(streetWear)
        streetWear.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            streetWear.widthAnchor.constraint(equalToConstant: 150),
            streetWear.heightAnchor.constraint(equalToConstant: 100),
            streetWear.topAnchor.constraint(equalTo: shorts.bottomAnchor, constant: 20),
            streetWear.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 210)
        ])
    }
    
    func tacticalWearButton() {
        scrollView.addSubview(tactical)
        tactical.translatesAutoresizingMaskIntoConstraints = false
        tactical.addTarget(self, action: #selector(allproducts), for: .touchUpInside)

        NSLayoutConstraint.activate([
            tactical.widthAnchor.constraint(equalToConstant: 330),
            tactical.heightAnchor.constraint(equalToConstant: 100),
            tactical.topAnchor.constraint(equalTo: homeWear.bottomAnchor, constant: 20),
            tactical.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30)
        ])
    }
}

extension SearchVC: UISearchBarDelegate {
    
}

