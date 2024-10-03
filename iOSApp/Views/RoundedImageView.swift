//
//  TestView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct RoundedImageView: View {
    var imageName:String
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .frame(width: 56, height: 56)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke())
                .foregroundColor(Color("ButtonColor"))
        }
    }
}

#Preview {
    RoundedImageView(imageName: "list.dash")
}
