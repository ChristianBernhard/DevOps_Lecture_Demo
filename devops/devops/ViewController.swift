//
//  ViewController.swift
//  devops
//
//  Created by Bernhard, Christian on 01.05.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradient()
        setupLabels()
    }
    
    func setupGradient() {
        let gradient: CAGradientLayer = CAGradientLayer()
        let firstColor = UIColor.init(red: 82.0/255.0, green: 168.0/255.0, blue: 235.0/255.0, alpha: 1.0).cgColor
        let secondColor = UIColor.init(red: 130.0/255.0, green: 213.0/255.0, blue: 1, alpha: 1.0).cgColor
        gradient.colors = [secondColor, firstColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.6, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
    func setupLabels() {
        headlineLabel.text = "Multiplicator"
        headlineLabel.textColor = .black
        headlineLabel.font = UIFont.systemFont(ofSize: 30.0, weight: .light)
    }
    
}

