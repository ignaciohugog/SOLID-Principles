//
//  NotSOLIDSquare.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

class NotSOLIDSquare: NotSOLIDRectangle {
    
    override func setHeight(_ value: Double) {
        myHeight = value
        myWidth = value
    }
    
    override func setWidth(_ value: Double) {
        myWidth = value
        myHeight = value
    }
    
}
