//
//  ViewController.swift
//  TicTacToe
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton :UIButton = {
       let button = UIButton()
        button.setTitle("Tic Tac Toe", for: .normal)
        button.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        button.backgroundColor = .black
       return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
        view.backgroundColor = .gray

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame=CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }

    @objc func handleButton(){
        print("received..")
        
        let vc = TiaTacToeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}


