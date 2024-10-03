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
            Text("89")
            Slider(value: .constant(50), in: 0...100){
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }
            Button("Try"){
                print("tapped Try")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
