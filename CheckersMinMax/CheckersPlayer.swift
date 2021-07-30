//
//  CheckersPlayer.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation

protocol CheckersPlayer {
    func provideMove(_ state: GameState) -> GameState?
    init()
}
