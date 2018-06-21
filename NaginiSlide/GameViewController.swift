//
//  ViewController.swift
//  NaginiSlide
//
//  Created by Alejandro Hernández Lara on 19-06-18.
//  Copyright © 2018 Alejandro Hernández Lara. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var targetValue : Int = 0
    var currentValue : Int = 0
    var score : Int = 0
    var round : Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resetGame()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        
        let difference : Int = abs(self.currentValue - self.targetValue)
        var points = 100 - difference
        let title: String
        
        switch difference {
        case 0:
            title = "¡¡¡Perfecto!!!"
            points = Int(10.0 * Float(points))
        case 1...5:
            title = "¡Has estado casi perfecto!"
            points = Int(2.5 * Float(points))
        case 6...12:
            title = "Te ha faltado poco..."
            points = Int(1.5 * Float(points))
        default:
            title = "Has ido muy lejos..."
        }
        
        let message = (points == 1000) ? "Felicitaciones, has marcado \(points)" : "Te has pasado por \(difference), ganaste \(points) puntos, ¡sigue intentando!"
        
        self.score += points
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "¡Ok!",
            style: .default,
            handler: {
                action in
                    self.startNewRound()
                    self.updateLabels()
                }
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        self.currentValue = lroundf(sender.value)
    }
    
    //Función para iniciar una nueva ronda
    func startNewRound(){
        self.targetValue = 1 + Int(arc4random_uniform(100))
        self.currentValue = 50
        self.slider.value = Float(self.currentValue)
        self.round += 1
    }
    
    func updateLabels(){
        self.targetLabel.text = "\(self.targetValue)"
        self.scoreLabel.text = "\(self.score)"
        self.roundLabel.text = "\(self.round)"
    }
    
    @IBAction func startNewGame(_ sender: UIButton) {
        self.resetGame()
        updateLabels()
    }
    
    func resetGame(){
        self.score = 0
        self.round = 0
        self.startNewRound()
    }
    
}

