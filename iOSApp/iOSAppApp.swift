//
//  iOSAppApp.swift
//  iOSApp
//
//  Created by Marta Bella Gómez on 3/10/24.
//

import SwiftUI

@main
struct iOSAppApp: App {
    @StateObject private var gameStore = GameStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(gameStore)
        }
    }
}
