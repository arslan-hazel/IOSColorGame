//
//  IOSColorGameApp.swift
//  IOSColorGame
//
//  Created by Arslan on 21/01/2026.
//

import SwiftUI

@main
struct IOSColorGameApp: App {
    
    @StateObject private var gameModel = GameModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(gameModel)
        }
    }
}
