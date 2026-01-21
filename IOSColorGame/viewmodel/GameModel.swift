//
//  GameModel.swift
//  IOSColorGame
//
//  Created by Arslan on 21/01/2026.
//

import Foundation
import SwiftUI
 import Combine

class GameModel: ObservableObject{
    @Published var score: Int = 0
    @Published var position = CGPoint(x: 100, y: 100)
}
