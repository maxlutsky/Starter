//
//  ViewController.swift
//  Starter
//
//  Created by Max on 30/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let timeLabel = UILabel()
    let startButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.green.cgColor
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.clipsToBounds = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupUI()
    }
    
    func setupConstraints(){
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(timeLabel)
        view.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            timeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            timeLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20),
            timeLabel.heightAnchor.constraint(equalToConstant: 50),
            
            startButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2),
            startButton.heightAnchor.constraint(equalTo: startButton.widthAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
    }
    
    
    func setupUI(){
        view.backgroundColor = .white
        startButton.setTitle("Start", for: .normal)
        startButton.layer.cornerCurve = .continuous
        startButton.layer.cornerRadius = startButton.frame.height/2
        startButton.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
    }
    
    @objc func startButtonPressed(){
        
    }
    
}

