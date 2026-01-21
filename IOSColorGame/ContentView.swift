//
//  ContentView.swift
//  IOSColorGame
//
//  Created by Arslan on 21/01/2026.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var game: GameModel
    var body: some View {
     
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
                .position(game.position)
                .onTapGesture {
                    game.score += 1
                    game.position = CGPoint(x: CGFloat.random(in: 50...350), y: CGFloat.random(in: 50...700))
                }
            VStack {
                Text("Score: \(game.score)")
                    .font(.largeTitle)
                    .padding()
                
                Spacer()
            }

        }
        
        
    }
}

#Preview {
    ContentView().environmentObject(GameModel())
}
