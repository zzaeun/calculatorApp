import UIKit
import SnapKit

class Lv3: Lv2 {

    let button1 = calculatorButton(title: "7")
    let button2 = calculatorButton(title: "8")
    let button3 = calculatorButton(title: "9")
    let button4 = calculatorButton(title: "+")
    let button5 = calculatorButton(title: "4")
    let button6 = calculatorButton(title: "5")
    let button7 = calculatorButton(title: "6")
    let button8 = calculatorButton(title: "-")
    let button9 = calculatorButton(title: "1")
    let button10 = calculatorButton(title: "2")
    let button11 = calculatorButton(title: "3")
    let button12 = calculatorButton(title: "*")
    let button13 = calculatorButton(title: "AC")
    let button14 = calculatorButton(title: "0")
    let button15 = calculatorButton(title: "=")
    let button16 = calculatorButton(title: "/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI3()
    }
    
    func configureUI3() {

        let horizontal1 = makeHorizontalStackView([button1, button2, button3, button4])
        let horizontal2 = makeHorizontalStackView([button5, button6, button7, button8])
        let horizontal3 = makeHorizontalStackView([button9, button10, button11, button12])
        let horizontal4 = makeHorizontalStackView([button13, button14, button15, button16])
        view.addSubview(horizontal1)
        
        let verticalStackView = makeVerticalStackView([horizontal1, horizontal2, horizontal3, horizontal4])
        view.addSubview(verticalStackView)
    
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
    }
    
    func makeVerticalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }

}
