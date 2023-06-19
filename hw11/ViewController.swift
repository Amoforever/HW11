//
//  ViewController.swift
//  hw11
//
//  Created by Amahastla on 18.06.2023.
//

import UIKit



class ViewController: UIViewController {
    
  
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    func addLeftImageTo(textField: UITextField, andImage img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        textField.leftView = leftImageView
        textField.leftViewMode = .always
    }
    
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
        let iconImage = UIImage(named:"icon")
        addLeftImageTo(textField: textField, andImage: iconImage!)
        let passwordImage = UIImage(named:"key")
        addLeftImageTo(textField: secondTextField, andImage: passwordImage!)
        
        button.backgroundColor = .blue
        button.tintColor = .white
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
    }

}

