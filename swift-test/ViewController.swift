//
//  ViewController.swift
//  swift-test
//
//  Created by MacMini on 3/2/20.
//  Copyright © 2020 MacMini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do an additional setup after loading the view.
        
//        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
//        let firstUIView = UIView(frame: firstFrame)
//        firstUIView.backgroundColor = UIColor.red
//        view.addSubview(firstUIView)
//
//
       view.addSubview(initView)
       view.addSubview(rightViewTop)
       view.addSubview(rightViewBottom)
       view.addSubview(bottomView)
        
        let constraints = [
            initView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            initView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            initView.widthAnchor.constraint(equalToConstant: CGFloat(150.0)),
            initView.heightAnchor.constraint(equalToConstant: CGFloat(150.0)),
            
            rightViewTop.topAnchor.constraint(equalTo: self.initView.topAnchor),
            rightViewTop.leftAnchor.constraint(equalTo: self.initView.rightAnchor, constant: 20),
            rightViewTop.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            rightViewTop.heightAnchor.constraint(equalToConstant: CGFloat(65.0)),
            
            rightViewBottom.bottomAnchor.constraint(equalTo: self.initView.bottomAnchor),
            rightViewBottom.leftAnchor.constraint(equalTo: self.initView.rightAnchor, constant: 20),
            rightViewBottom.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            rightViewBottom.heightAnchor.constraint(equalToConstant: CGFloat(65.0)),
            
            bottomView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            bottomView.topAnchor.constraint(equalTo: self.initView.bottomAnchor, constant: 50),
            bottomView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: CGFloat(65.0))
        ]
                                                

        NSLayoutConstraint.activate(constraints)

        
       // secondUIView.constraints
    }


    lazy var initView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var rightViewTop:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var rightViewBottom:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var bottomView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
}

