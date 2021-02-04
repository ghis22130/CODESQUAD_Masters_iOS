//
//  Hangman.swift
//  CS10-Day10
//
//  Created by 지북 on 2021/02/04.
//

import Foundation
import UIKit

@IBDesignable
class Hangman: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 30, y: 100))
        path.close()
        path.stroke()
    }
}
