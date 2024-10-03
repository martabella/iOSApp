//
//  BackgroundView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    @State var markIsVisible = false
    var body: some View {
        VStack {
            HStack{
                Button(action: {game.restartGame()}){
                    RoundedImageView(imageName: "arrow.clockwise")
                }
                Spacer()
                Button(action: {markIsVisible = true}){
                    RoundedImageView(imageName: "list.dash")
                }
            }
            Spacer()
            HStack{
                NumberView(title: "SCORE", text: "\(game.score)")
                Spacer()
                NumberView(title: "ROUND", text: "\(game.round)")
            }
        }.padding()
            .background(Color("BackgroundColor"))
            .sheet(isPresented: $markIsVisible){
                MarksView(game: game)
            }
            
    }
}

#Preview {
    BackgroundView(game: .constant(Game()))
}
