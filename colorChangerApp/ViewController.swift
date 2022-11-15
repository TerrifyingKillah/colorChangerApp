//
//  ViewController.swift
//  colorChangerApp
//
//  Created by Александр on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var scoreTapButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 13
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.layer.bounds.width / 2
        redView.clipsToBounds = true
        
        yellowView.layer.cornerRadius = yellowView.layer.bounds.width / 2
        yellowView.clipsToBounds = true
        
        greenView.layer.cornerRadius = yellowView.layer.bounds.width / 2
        greenView.clipsToBounds = true 
    }

    @IBAction func changeColorButton(_ sender: Any) {
        scoreTapButton += 1
        startButton.setTitle("Next", for: .normal)
        
        switch scoreTapButton {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
        case 3:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            scoreTapButton = 0
        default:
            break
        }
        
    }
}
    


