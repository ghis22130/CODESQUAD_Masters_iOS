//
//  ViewController.swift
//  CS10-Day10
//
//  Created by 지북 on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hangman = Hangman(frame: self.view.frame)
        view.backgroundColor = .clear
        self.view.addSubview(hangman)
    }

}

