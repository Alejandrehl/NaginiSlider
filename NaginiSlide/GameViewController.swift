//
//  ViewController.swift
//  NaginiSlide
//
//  Created by Alejandro Hernández Lara on 19-06-18.
//  Copyright © 2018 Alejandro Hernández Lara. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    //Variable que almacena el último valor del slider
    var currentValue : Int = 50
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentValue = lroundf(slider.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "El valor del slider es: \(self.currentValue)"
        
        let alert = UIAlertController(
            title: "¡Puntuación!",
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Seguir",
            style: .default,
            handler: nil
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        self.currentValue = lroundf(sender.value)
    }
}

