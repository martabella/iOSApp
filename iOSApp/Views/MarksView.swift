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
            Spacer()
        }.padding()
    }
}

#Preview {
    MarksView(game: Game())
}
