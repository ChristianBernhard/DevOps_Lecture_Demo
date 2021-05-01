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
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var firstNumberInput: UITextField!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var secondNumberInput: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradient()
        setupHeadlineLabel()
        setupNumberLabels()
        setupOutputLabels()
        setupNumberInputs()
        setupButton()
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
    
    func setupHeadlineLabel() {
        headlineLabel.text = "Multiplicator"
        headlineLabel.textColor = .black
        headlineLabel.font = UIFont.systemFont(ofSize: 30.0, weight: .light)
    }
    
    func setupNumberLabels() {
        firstNumberLabel.text = "First Number"
        firstNumberLabel.textColor = .black
        firstNumberLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .light)
        
        secondNumberLabel.text = "Second Number"
        secondNumberLabel.textColor = .black
        secondNumberLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .light)
    }
    
    func setupNumberInputs() {
        firstNumberInput.frame.size = CGSize(width: 200, height: 30)
    }
    
    func setupOutputLabels() {
        outputLabel.text = "Result:"
        outputLabel.textColor = .black
        outputLabel.font = UIFont.systemFont(ofSize: 15.0, weight: .light)
        
        output.text = "-"
        output.textColor = .black
        output.font = UIFont.systemFont(ofSize: 15.0, weight: .light)
    }
    
    func setupButton() {
        calculateButton.backgroundColor = .lightGray
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .light)
        calculateButton.setTitleColor(.black, for: .normal)
        //calculateButton.frame.size = CGSize(width: 200, height: 50)
        calculateButton.layer.cornerRadius = CGFloat(18.0)
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        output.text = calculateMultiplication()
    }
    
    func calculateMultiplication() -> String {
        let a = Int(firstNumberInput.text ?? "0") ?? 0
        let b = Int(secondNumberInput.text ?? "0") ?? 0
        let result  = String(a*b)
        return result
    }
    
}

