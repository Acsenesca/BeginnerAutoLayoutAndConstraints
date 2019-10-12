//
//  ViewController.swift
//  AutoLayoutAndConstraints
//
//  Created by Stevanus Prasetyo Soemadi on 12/10/19.
//  Copyright © 2019 Stevanus Prasetyo Soemadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        setBackground()
        view.addGestureRecognizer(tap)

    }
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "bgView")
        view.sendSubviewToBack(backgroundImageView)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
