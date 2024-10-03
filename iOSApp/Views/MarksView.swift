//
//  MarksView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct MarksView: View {
    var game:Game
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
            List(0..<game.marks.count){index in
                HStack{
                    Text("\(index+1)")
                        .kerning(1)
                        .frame(width: 68, height: 56)
                        .overlay(RoundedRectangle(cornerRadius: 21).stroke())
                    Spacer()
                    Text("\(game.marks[index].value)")
                    Spacer()
                    Text(game.marks[index].date, style:.time)
                }
            }
        }.padding()
    }
}

#Preview {
    MarksView(game: Game())
}
