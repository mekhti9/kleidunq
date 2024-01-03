//
//  LibraryVC.swift
//  klaudinq
//
//  Created by mehdimagerramov on 17.04.2023.
//

import UIKit

class CartVC: UIViewController{
    
    var cartManager = CartManager()
    let totalButton = searchButtons(title: "CHECKOUT")
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CartCell.self, forCellReuseIdentifier: CartCell.identifier)
        return tableView
    }()
    
    private let footerView: UIView = {
            let view = UIView()
            view.backgroundColor = .systemBackground
            return view
        }()
        
    private let totalLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.boldSystemFont(ofSize: 40)
        //label.textColor = .systemBackground
            return label
        }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(tableView)
        self.view.addSubview(footerView)
        footerView.addSubview(totalLabel)
        footerView.addSubview(totalButton)
        totalButton.addTarget(self, action: #selector(totalBut), for: .touchUpInside)

        footerView.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        totalButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            footerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 80),
                        
            totalLabel.leadingAnchor.constraint(equalTo: footerView.leadingAnchor, constant: 20),
            totalLabel.centerYAnchor.constraint(equalTo: footerView.centerYAnchor),
                        
            totalButton.trailingAnchor.constraint(equalTo: footerView.trailingAnchor, constant: -20),
            totalButton.centerYAnchor.constraint(equalTo: footerView.centerYAnchor),
            totalButton.widthAnchor.constraint(equalToConstant: 150),
            totalButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        self.updateTotalLabel()
            }
        
        @objc func totalBut() {
            let alert = UIAlertController(title: "YOUR ORDER HAS BEEN PLACED!", message: nil, preferredStyle: .alert)
    
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            alert.addAction(UIAlertAction(title: "DETAILS", style: .default))
            present(alert, animated: true, completion: nil)
        }
    
        private func updateTotalLabel() {
            let total = self.cartManager.total()
            self.totalLabel.text = "$\(total)"
        }
}

extension CartVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartManager.cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CartCell.identifier, for: indexPath) as? CartCell else {
            fatalError("aybilyaaa")
        }
        let image = self.cartManager.cartItems[indexPath.row].imageName
        let title = self.cartManager.cartItems[indexPath.row].title
        let price = self.cartManager.cartItems[indexPath.row].price
        cell.configure(image: image, title: title, price: price)
        return cell
    }
}
