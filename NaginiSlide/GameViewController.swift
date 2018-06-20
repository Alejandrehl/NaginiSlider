//
//  ViewController.swift
//  NaginiSlide
//
//  Created by Alejandro Hernández Lara on 19-06-18.
//  Copyright © 2018 Alejandro Hernández Lara. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var targetValue : Int = 0;
    var currentValue : Int = 50
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = """
            El valor del slider es: \(self.currentValue)
            El valor del objetivo es: \(self.targetValue)
            """
        
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
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        self.currentValue = lroundf(sender.value)
    }
    
    //Función para iniciar una nueva ronda
    func startNewRound(){
        self.targetValue = 1 + Int(arc4random_uniform(100))
        self.currentValue = 50
        self.slider.value = Float(self.currentValue)
    }
}

