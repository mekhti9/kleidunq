//
//  KleidungVC.swift
//  klaudinq
//
//  Created by mehdimagerramov on 13.06.2023.
//

import UIKit

class KleidungVC: UIViewController {
    
    let titleLabel = UILabel()
    let image1 = UIImageView()
    let scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        scroll()
        image1Conf()
        title()
    }
    
    func scroll() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.width, height: 2940)
        
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
    
    func title() {
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "KLEIDUNG IS A TACTICAL CLOTHING AND ACCESSORIES SHOP THAT HAS BEEN SERVING CUSTOMERS FOR YEARS. OUR MISSION IS TO PROVIDE HIGH-QUALITY PRODUCTS THAT MEET THE NEEDS OF OUR CUSTOMERS, WHETHER THEY ARE MILITARY PERSONNEL, LAW ENFORCEMENT OFFICERS, OR OUTDOOR ENTHUSIASTS.\n\nAT KLEIDUNG, WE OFFER A WIDE RANGE OF TACTICAL CLOTHING AND ACCESSORIES, INCLUDING BACKPACKS, BOOTS, GLOVES, HATS, JACKETS, PANTS, AND VESTS. OUR PRODUCTS ARE DESIGNED TO BE DURABLE, COMFORTABLE, AND FUNCTIONAL, SO YOU CAN RELY ON THEM IN ANY SITUATION.\n\nWE UNDERSTAND THE IMPORTANCE OF STAYING UP-TO-DATE WITH THE LATEST TRENDS AND TECHNOLOGIES IN TACTICAL GEAR, WHICH IS WHY WE WORK WITH TOP BRANDS AND MANUFACTURERS TO BRING YOU THE BEST PRODUCTS ON THE MARKET. WHETHER YOU NEED GEAR FOR A MISSION OR FOR YOUR NEXT ADVENTURE, WE HAVE YOU COVERED.\n\nOUR TEAM CONSISTS OF EXPERIENCED PROFESSIONALS WHO ARE PASSIONATE ABOUT TACTICAL GEAR AND CUSTOMER SERVICE. WE ARE ALWAYS READY TO ANSWER YOUR QUESTIONS, PROVIDE ADVICE, AND HELP YOU FIND THE PERFECT PRODUCT FOR YOUR NEEDS.\n\nYOU CAN FIND US ON INSTAGRAM, TELEGRAM, VK, AND BY PHONE.\n\nWE ALSO HAVE SEVERAL SHOP ADDRESSES WHERE YOU CAN COME AND SEE OUR PRODUCTS IN PERSON.\n\nTHANK YOU FOR CHOOSING KLEIDUNG AS YOUR GO-TO TACTICAL CLOTHING AND ACCESSORIES SHOP. WE LOOK FORWARD TO SERVING YOU!"
                        
        titleLabel.font = .systemFont(ofSize: 25, weight: .heavy)
        titleLabel.textAlignment = .justified
        titleLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: image1.bottomAnchor , constant: 40),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50)
        ])
    }
    
}
