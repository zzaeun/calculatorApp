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
        
        // button style이 모두 같으니까 forEach를 통해 style 공통 적용
        [button1, button2, button3, button4] .forEach {
            $0.titleLabel?.font = .boldSystemFont(ofSize: 30)
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            $0.layer.cornerRadius = 40
            $0.snp.makeConstraints {
                $0.height.equalTo(80)
                $0.width.equalTo(80)
            }
        }
        
        button1.setTitle("7", for: .normal)
        button2.setTitle("8", for: .normal)
        button3.setTitle("9", for: .normal)
        button4.setTitle("+", for: .normal)
        
        let stackView = UIStackView(arrangedSubviews: [button1, button2, button3, button4])
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.top.equalTo(label.snp.bottom).offset(80)
        }
    }
}
