//
//  Game.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import Foundation

struct Game{
    private(set) var target = Int.random(in: 0...100)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var round = 1
    private(set) var marks = [Mark]()
    private let maxNumberMarks = 5
    
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
        addMark()
    }
    mutating func startNewRound(){
        self.score+=points
        target = Int.random(in: 0...100)
        round+=1
    }
    
    mutating func restartGame(){
        score = 0
        round = 0
    }
    
    private mutating func addMark(){
        if marks.count<maxNumberMarks{
            self.marks.append(Mark(value:points, date:Date()))
        }else if marks.last!.value<points{
            marks.removeLast()
            marks.append(Mark(value:points, date:Date()))
        }
        
        self.marks.sort{$0<$1}
    }
    
    static let defaultMarks = [Mark(value: 70, date: Date()), Mark(value: 50, date: Date()), Mark(value: 40, date: Date())]
}
