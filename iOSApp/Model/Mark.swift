//
//  Mark.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import Foundation

struct Mark: Comparable{
    private(set) var value:Int
    private(set) var date:Date
    
    static func < (lhs: Mark, rhs: Mark) -> Bool {
        lhs.value>rhs.value
    }
    
}
