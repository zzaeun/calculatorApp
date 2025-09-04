////
////  Lv1.swift
////  calculatorApp
////
////  Created by 이정은 on 9/3/25.
////
//
//import UIKit
//import SnapKit
//
//class Lv1: UIViewController {
//    var label = UILabel()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureUI()
//    }
//    
//    func configureUI() {
//        view.backgroundColor = .black
//        label.text = "12345"
//        label.textColor = .white
//        label.textAlignment = .right
//        label.font = UIFont.boldSystemFont(ofSize: 60)
//        
//        [label]
//            .forEach { view.addSubview($0) }
//        
//        label.snp.makeConstraints {
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().inset(30)
//            $0.top.equalToSuperview().inset(200)
//            $0.height.equalTo(100)
//        }
//    }
//    
//    
//}
