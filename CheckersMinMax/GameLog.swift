//
//  GameLog.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 24.7.2021.
//

import Foundation

struct GameLog: Encodable, GameObserver {
    var states: [GameState] = []
    var gameStart: Date?
    var gameEnd: Date?
    var result: GameResult = GameResult.Underway
    var blackPlayerName: String
    var whitePlayerName: String
    init(blackName:String, whiteName:String, start:Date) {
        blackPlayerName=blackName
        whitePlayerName=whiteName
        gameStart=start
    }
    func addState(_ state: Game){
        states.append(state)
    }
    func endGame(_ newResult: GameResult) {
        result=GameResult
    }
}

enum GameResult {
    case WhiteWon, BlackWon, Draw, Underway
}
