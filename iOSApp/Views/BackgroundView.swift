//
//  BackgroundView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct BackgroundView: View {
    
    @State var markIsVisible = false
    
    @EnvironmentObject private var gameStore:GameStore
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {gameStore.game.restartGame()}){
                    RoundedImageView(imageName: "arrow.clockwise")
                }
                Spacer()
                Button(action: {markIsVisible = true}){
                    RoundedImageView(imageName: "list.dash")
                }
            }
            Spacer()
            HStack{
                NumberView(title: "SCORE", text: "\(gameStore.game.score)")
                Spacer()
                NumberView(title: "ROUND", text: "\(gameStore.game.round)")
            }
        }.padding()
            .background(Color("BackgroundColor"))
            .sheet(isPresented: $markIsVisible){
                MarksView()
            }
            
    }
}

#Preview {
    BackgroundView()
}
