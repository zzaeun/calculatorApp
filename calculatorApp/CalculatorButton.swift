//
//  caclculatorButton.swift
//  calculatorApp
//
//  Created by 이정은 on 9/5/25.
//

import UIKit
import SnapKit

// 버튼 + 스택뷰 생성
class CalculatorButton {
    
    // 버튼 UI
    static func calculatorButton(title: String, target: Any?, action: Selector, backgroundColor: UIColor) -> UIButton {
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
        // 버튼 클릭 이벤트 연결
        button.addTarget(target, action: action, for: .touchUpInside)
        return button
    }
    
    // 가로 스택뷰
    static func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }

    // 세로 스택뷰
    static func makeVerticalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    
}
