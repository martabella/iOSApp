//
//  ContentView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var game = Game()
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                Text("🎯🎯🎯🎯")
                    .font(.largeTitle)
                    .padding(.bottom)
                Text("\(game.target)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .tracking(/*@START_MENU_TOKEN@*/-1.0/*@END_MENU_TOKEN@*/)
                SliderView(value: $sliderValue, minValue: 0, maxValue: 100)
                Button("Try"){
                    game.points(sliderValue: Int(sliderValue.rounded()))
                    alertIsVisible = true
                    
                }.alert(isPresented: $alertIsVisible){
                    Alert(title: Text("Congratulations"),
                          message: Text("The slider value is \(Int(sliderValue.rounded())) \n You scored \(game.points) points \n 🎉🎉🎉🎉"),
                          dismissButton:.default(Text("OK")){
                        game.restart()
                        sliderValue = 50.0
                    })
                }
                .padding(.all, 20.0)
                .background(Color("AccentColor"))
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            }
            .padding()
        
        }
    }
}

#Preview {
    ContentView()
}

struct SliderView: View {
    @Binding var value:Double
    let minValue:Double
    let maxValue:Double
    var body: some View {
        Slider(value: $value, in: minValue...maxValue){
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }.fontWeight(.bold)
    }
}
