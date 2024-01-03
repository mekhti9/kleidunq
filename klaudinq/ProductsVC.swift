//
//  ViewController.swift
//  klaudinq
//
//  Created by mehdimagerramov on 24.04.2023.
//

import UIKit

class ProductsVC: UIViewController {
    var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var searchBar = UISearchBar()
    
    var filteredData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.title = "PRODUCTS"
        setCollectView()
        collectionView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "MenuCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        searchBar.delegate = self
        filteredData = itemDataTitles()
    }
    
    func itemDataTitles() -> [String] {
        var itemTitles: [String]!
        
        for i in data {
            itemTitles.append(i.title)
        }
        return itemTitles
    }
    
    func setCollectView() {
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension ProductsVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}

extension ProductsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.imageView.image = UIImage(named: data[indexPath.row].imageName)
        cell.nameLabel.text = data[indexPath.row].title
        return cell
    }
}

extension ProductsVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 230)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tovarVC = TovarVC()
        tovarVC.selectedItem = data[indexPath.row]
        navigationController?.pushViewController(tovarVC, animated: true)
    }
}

