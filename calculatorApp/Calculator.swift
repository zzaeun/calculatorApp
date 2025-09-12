//
//  operation.swift
//  calculatorApp
//
//  Created by 이정은 on 9/5/25.
//

import UIKit
import SnapKit

class Calculator {
    /// 수식 문자열을 넣으면 계산해주는 메서드.
    ///
    /// 예를 들어 expression 에 "1+2+3" 이 들어오면 6 을 리턴한다.
    /// 잘못된 형식의 수식을 넣으면 앱이 크래시 난다. ex) "1+2++"
    static func calculate(expression: String) -> Int? {
            let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
}
