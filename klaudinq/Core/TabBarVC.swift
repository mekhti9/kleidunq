//
//  TabBarVC.swift
//  klaudinq
//
//  Created by mehdimagerramov on 17.04.2023.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = HomeViewController()
        let vc2 = SearchVC()
        let vc3 = CartVC()
        let vc4 = KleidungVC()
        
        vc1.title = "BROWSE"
        vc2.title = "SEARCH"
        vc3.title = "CART"
        vc4.title = "KLEIDUNG"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        vc4.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc4)
        
        nav1.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "SEARCH", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "CART", image: UIImage(systemName: "cart"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "KLEIDUNG", image: UIImage(systemName: "k.circle"), tag: 1)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        nav4.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: false)
    }
}
