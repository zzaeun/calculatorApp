//
//  ViewController.swift
//  calculatorApp
//
//  Created by 이정은 on 9/3/25.
//


import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var label = UILabel()
//    let calButtonFactory = CalculatorButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureButtons()
    }
    
    func configureUI() {
        view.backgroundColor = .black
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().inset(200)
            $0.height.equalTo(100)
        }
    }
    
    func configureButtons() {
        
        let button1 = CalculatorButton.calculatorButton(title: "7", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button2 = CalculatorButton.calculatorButton(title: "8", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button3 = CalculatorButton.calculatorButton(title: "9", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button4 = CalculatorButton.calculatorButton(title: "+", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        let button5 = CalculatorButton.calculatorButton(title: "4", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button6 = CalculatorButton.calculatorButton(title: "5", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button7 = CalculatorButton.calculatorButton(title: "6", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button8 = CalculatorButton.calculatorButton(title: "-", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        let button9 = CalculatorButton.calculatorButton(title: "1", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button10 = CalculatorButton.calculatorButton(title: "2", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button11 = CalculatorButton.calculatorButton(title: "3", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button12 = CalculatorButton.calculatorButton(title: "*", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        let button13 = CalculatorButton.calculatorButton(title: "AC", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        let button14 = CalculatorButton.calculatorButton(title: "0", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button15 = CalculatorButton.calculatorButton(title: "=", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        let button16 = CalculatorButton.calculatorButton(title: "/", target: self, action: #selector(buttonTapped(_:)), backgroundColor: UIColor.orange)
        
        // 가로 스택뷰 4개
        let h1 = CalculatorButton.makeHorizontalStackView([button1, button2, button3, button4])
        let h2 = CalculatorButton.makeHorizontalStackView([button5, button6, button7, button8])
        let h3 = CalculatorButton.makeHorizontalStackView([button9, button10, button11, button12])
        let h4 = CalculatorButton.makeHorizontalStackView([button13, button14, button15, button16])
        
        
        // 세로 스택뷰 구성
        let verticalStackView = CalculatorButton.makeVerticalStackView([h1, h2, h3, h4])
        view.addSubview(verticalStackView)
        
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(80)
            $0.centerX.equalToSuperview()
        }
    }
    
    // button 눌렀을 때
    @objc
    func buttonTapped(_ sender: UIButton) {
        guard let value = sender.currentTitle else { return }
        if label.text == "0" {
            label.text = value
        } else if value == "AC" {
            label.text = "0"
        } else {
            label.text = (label.text ?? "") + value
        }
    }
    
}
