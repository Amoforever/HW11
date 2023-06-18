//
//  ViewController.swift
//  hw11
//
//  Created by Amahastla on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    private lazy var gradient: CAGradientLayer = {
            let gradient = CAGradientLayer()
            gradient.frame = view.bounds
            gradient.colors = [UIColor.systemBlue.cgColor, UIColor.white.cgColor]
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1)
            return gradient
        }()
    override func viewDidLoad() {
        view.layer.insertSublayer(gradient, at: 0)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

