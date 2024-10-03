//
//  ContentView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct ContentView: View {
    let a = 34
    var body: some View {
        VStack {
            Text("🎯🎯🎯🎯")
                .font(.largeTitle)
                .padding(.bottom)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.bold)
                .tracking(/*@START_MENU_TOKEN@*/-1.0/*@END_MENU_TOKEN@*/)
            Slider(value: .constant(50), in: 0...100){
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }.fontWeight(.bold)
            Button("Try"){
                print("tapped Try")
            }
            .padding(.all, 20.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
