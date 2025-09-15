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
        label.adjustsFontSizeToFitWidth = true
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().inset(200)
            $0.height.equalTo(100)
        }
    }
    
    func configureButtons() {
        
        let buttonTitles = [
            ["7", "8", "9", "+"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "*"],
            ["AC", "0", "=", "/"]
        ]
        
        var allButtons: [[UIButton]] = []
        
        for row in buttonTitles {
            let buttonRow = row.map { title -> UIButton in
                let isOperator = ["+", "-", "*", "/", "=", "AC"].contains(title)
                let bgColor = isOperator ? .orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
                return CalculatorButton.calculatorButton(title: title, target: self, action: #selector(buttonTapped), backgroundColor: bgColor)
            }
            allButtons.append(buttonRow)
        }
            // 가로 스택뷰
            let horizontalStacks = allButtons.map { rowButtons in
                CalculatorButton.makeHorizontalStackView(rowButtons)
            }
            
            // 세로 스택뷰 구성
            let verticalStackView = CalculatorButton.makeVerticalStackView(horizontalStacks)
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
            } else {
                label.text = (label.text ?? "") + value
            }
            
            if value == "AC" {
                label.text = "0"
            } else if value == "=" {
                if var expression = label.text {
                    expression = expression.replacingOccurrences(of: "=", with: "")
                    if let result = Calculator.calculate(expression: expression) {
                        label.text = "\(result)"
                    }
                }
            }
        }
    }
