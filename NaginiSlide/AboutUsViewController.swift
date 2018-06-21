//
//  AboutUsViewController.swift
//  NaginiSlide
//
//  Created by Alejandro Hernández Lara on 20-06-18.
//  Copyright © 2018 Alejandro Hernández Lara. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToGame() {
        dismiss(animated: true, completion: nil)
    }
    
}
