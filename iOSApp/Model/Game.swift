//
//  Game.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import Foundation

struct Game{
    let target = Int.random(in: 0...100)
    private(set) var points = 0
    private(set) var score = 0
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
        self.score+=points
    }
}
