//
//  MarksView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct MarksView: View {
    @EnvironmentObject private var gameStore:GameStore
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Text("Marks".uppercased())
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button("Close"){
                    presentationMode.wrappedValue.dismiss()
                }
            }
            List(0..<gameStore.game.marks.count){index in
                HStack{
                    Text("\(index+1)")
                        .kerning(1)
                        .frame(width: 68, height: 56)
                        .overlay(RoundedRectangle(cornerRadius: 21).stroke())
                    Spacer()
                    Text("\(gameStore.game.marks[index].value)")
                    Spacer()
                    Text(gameStore.game.marks[index].date, style:.time)
                }
            }
        }.padding()
    }
}

#Preview {
    MarksView()
}
