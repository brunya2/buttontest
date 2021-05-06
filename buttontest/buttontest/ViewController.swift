//
//  ViewController.swift
//  katyatestproject
//
//  Created by Brunya on 05.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @objc func goBackPressed(_ sender: UIButton!){
        navigationController?.popViewController(animated: true)
    }
    
    public lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "back"), for: .normal)
        button.addTarget(self, action: #selector(goBackPressed), for: .touchUpInside)
        return button
    }()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        backButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backButton)
        NSLayoutConstraint.activate([
                backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
            backButton.backgroundColor = .systemPink
        // Do any additional setup after loading the view.
    }
    

    

}


