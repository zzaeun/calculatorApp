//
//  Lc2.swift
//  calculatorApp
//
//  Created by 이정은 on 9/3/25.
//

import UIKit
import SnapKit

class Lv2: Lv1 {
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI2()
    }
    
    func configureUI2() {
        
        let button1 = calculatorButton(title: "7")
        let button2 = calculatorButton(title: "8")
        let button3 = calculatorButton(title: "9")
        let button4 = calculatorButton(title: "+")
        
        let horizontalStackView = makeHorizontalStackView([button1, button2, button3, button4])
        
        view.addSubview(horizontalStackView)
        
        func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
            let stackView = UIStackView(arrangedSubviews: views)
            stackView.backgroundColor = .black
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            return stackView
        }
        
        horizontalStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.top.equalTo(label.snp.bottom).offset(80)
            
        }
    }
}

func calculatorButton(title: String) -> UIButton {
    let button = UIButton()
    
    button.setTitle(title, for: .normal)
    button.titleLabel?.font = .boldSystemFont(ofSize: 30)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
    button.layer.cornerRadius = 40
        
        
    button.snp.makeConstraints {
            $0.height.equalTo(80)
            $0.width.equalTo(80)
        }
    return button
}
