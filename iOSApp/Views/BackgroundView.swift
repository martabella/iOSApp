//
//  BackgroundView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    
    var body: some View {
        VStack {
            HStack{
                RoundedImageView(imageName: "arrow.clockwise")
                Spacer()
                RoundedImageView(imageName: "list.dash")
            }
            Spacer()
            HStack{
                NumberView(title: "SCORE", text: "\(game.score)")
                Spacer()
                NumberView(title: "ROUND", text: "1")
            }
        }.padding()
            .background(Color("BackgroundColor"))
            
    }
}

#Preview {
    BackgroundView(game: .constant(Game()))
}
