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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureButtons()
    }
    
    func configureUI() {
        view.backgroundColor = .black
        label.text = "12345"
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
        
        let button1 = calculatorButton(title: "7", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button2 = calculatorButton(title: "8", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button3 = calculatorButton(title: "9", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button4 = calculatorButton(title: "+", backgroundColor: .orange)
        let button5 = calculatorButton(title: "4", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button6 = calculatorButton(title: "5", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button7 = calculatorButton(title: "6", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button8 = calculatorButton(title: "-", backgroundColor: .orange)
        let button9 = calculatorButton(title: "1", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button10 = calculatorButton(title: "2", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button11 = calculatorButton(title: "3", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button12 = calculatorButton(title: "*", backgroundColor: .orange)
        let button13 = calculatorButton(title: "AC", backgroundColor: .orange)
        let button14 = calculatorButton(title: "0", backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button15 = calculatorButton(title: "=", backgroundColor: .orange)
        let button16 = calculatorButton(title: "/", backgroundColor: .orange)
        
        // 가로 스택뷰 4개
        let horizontal1 = makeHorizontalStackView([button1, button2, button3, button4])
        let horizontal2 = makeHorizontalStackView([button5, button6, button7, button8])
        let horizontal3 = makeHorizontalStackView([button9, button10, button11, button12])
        let horizontal4 = makeHorizontalStackView([button13, button14, button15, button16])
        view.addSubview(horizontal1)
        
        // 세로 스택뷰
        let verticalStackView = makeVerticalStackView([horizontal1, horizontal2, horizontal3, horizontal4])
        view.addSubview(verticalStackView)
    
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
    }
    
    // 버튼 UI
    func calculatorButton(title: String, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 40
            
            
        button.snp.makeConstraints {
                $0.height.equalTo(80)
                $0.width.equalTo(80)
            }
        return button
    }
    
    // 가로 스택뷰
    func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    
    // 세로 스택뷰
    func makeVerticalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    
    
}
