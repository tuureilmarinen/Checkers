//
//  GameObserver.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 27.7.2021.
//

import Foundation

enum GameResult {
    case WhiteWon, BlackWon, Draw
}

protocol GameObserver {
    init(_ black: CheckersPlayer, _ white: CheckersPlayer)
    func recordState(_ state: GameState) -> Void
    func recordResult(_ result: GameResult, _ turns: Int) -> Void
}
