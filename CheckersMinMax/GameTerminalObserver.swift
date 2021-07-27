//
//  GameTerminalObserver.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 27.7.2021.
//

import Foundation

struct GameTerminalObserver : GameObserver {
    private let black:CheckersPlayer
    private let white:CheckersPlayer
    init(_ black :CheckersPlayer, _ white: CheckersPlayer) {
        self.black=black
        self.white=white
    }
    func recordState(_ state: GameState) -> Void {
        TerminalUI.printState(state)
    }
    func recordResult(_ result: GameResult, _ turns: Int) -> Void {
        switch result {
        case .BlackWon:
            print("WINNER: Black. \(black). LOSER: White. \(white)")
        case .WhiteWon:
            print("WINNER: White. \(white). LOSER: Black. \(black)")
        case .Draw:
            print("DRAW: White:\(white) vs. Black:\(black)")
        }
        print("It took \(turns) half-turns.")
        
    }
}
