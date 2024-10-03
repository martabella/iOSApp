//
//  Game.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import Foundation

struct Game{
    let target = Int.random(in: 0...100)
    func points(sliderValue:Int)->Int{
        return 100-abs(sliderValue-target)
    }
}
