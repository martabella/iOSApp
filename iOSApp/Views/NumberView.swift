//
//  NumberView.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

struct NumberView: View {
    var title:String
    var text:String
    var body: some View {
        VStack {
            Text(title)
            Text(text)
                .frame(width: 56)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        }
    }
}

#Preview {
    NumberView(title: "SCORE", text: "99")
}
