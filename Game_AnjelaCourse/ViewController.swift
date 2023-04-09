//
//  ViewController.swift
//  Game_AnjelaCourse
//
//  Created by Anton Medovnik on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let gradient = UIImage (named: "gradient.jpeg")
    let logo = UIImage (named: "logo.png")
    @objc let button = UIButton()
    
    
    
    var bgView = UIImageView()
    var logoView = UIImageView()
    var gameUi = UIImageView()
    var gameUitwo = UIImageView ()
    
    
    var arrayOfImages : [UIImage] = [#imageLiteral(resourceName: "one"), #imageLiteral(resourceName: "two"), #imageLiteral(resourceName: "four"), #imageLiteral(resourceName: "five"), #imageLiteral(resourceName: "six") ]
    var arrayOfImagesTwo : [UIImage] = [#imageLiteral(resourceName: "one"), #imageLiteral(resourceName: "two"), #imageLiteral(resourceName: "four"), #imageLiteral(resourceName: "five"), #imageLiteral(resourceName: "six") ]
    var targetSize = CGSize(width: 50, height: 50)

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gameUitwo)
        view.addSubview(gameUi)
        view.addSubview(logoView)
        view.addSubview(button)
        view.addSubview(bgView)
        
        self.view.bringSubviewToFront(gameUitwo)
        self.view.bringSubviewToFront(gameUi)
        self.view.bringSubviewToFront(logoView)
        self.view.bringSubviewToFront(button)
        
       
        
        
        gameUi.image = arrayOfImages.randomElement()
        gameUitwo.image = arrayOfImages.randomElement()
       
        bgView.image = gradient
        logoView.image = logo
        logoView.contentMode = .scaleAspectFit
        
//        gameUi.frame.size = CGSize (width: 1, height: 1)
//        gameUi.contentMode = .center
        
        button.contentMode = .center
        button.setTitle("ROLL", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(randomDice), for: .touchUpInside)
        
        
       
        
        

   
        gameUitwo.translatesAutoresizingMaskIntoConstraints = false
        gameUi.translatesAutoresizingMaskIntoConstraints = false
        bgView.translatesAutoresizingMaskIntoConstraints = false
        logoView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bgView.topAnchor.constraint(equalTo: view.topAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant:  -505),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            logoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
     
            gameUi.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gameUi.leadingAnchor.constraint(equalTo: view
                                                .leadingAnchor, constant: 30),
            gameUi.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -300),
            gameUi.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -800),
            

            gameUitwo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gameUitwo.trailingAnchor.constraint(equalTo: view
                                                .trailingAnchor, constant: -30),
            gameUitwo.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -300),
            gameUitwo.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -800),

       
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -200),
            button.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 120),
            button.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -120)
            
            
            
            
            ])
       
        
     
    
    }
    
    @objc func randomDice () {
        button.addTarget(self, action: #selector(getter: button), for: .touchUpInside)
        gameUi.image = arrayOfImages.randomElement()
        gameUitwo.image = arrayOfImages.randomElement()
        
    
        
    }

}

