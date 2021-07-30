//
//  CheckersRandomPlayer.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 26.7.2021.
//

import Foundation

struct CheckersRandomPlayer: CheckersPlayer {
    public init() {}
    func provideMove(_ state: GameState) -> GameState? {
        let options=state.children
        if options.isEmpty {
            return nil
        }
        let selection : GameState = options.randomElement()!
        return selection
    }
}
