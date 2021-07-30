//
//  GameController.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 24.7.2021.
//

import Foundation


class GameController {
    let playerBlack:CheckersPlayer
    let playerWhite:CheckersPlayer
    let observer:GameObserver
    
    var gameUnderway: Bool = false
    init(_ black:CheckersPlayer, _ white:CheckersPlayer, _ observer:GameObserver) {
        playerWhite=white
        playerBlack=black
        self.observer=observer
    }
    
    func playGame (_ state: GameState){
        var currentState:GameState=state
        var newState:GameState?=state
        var counter=0
        repeat {
            currentState=newState!
            counter+=1
            observer.recordState(currentState)
            if currentState.blackTurn {
                newState=playerBlack.provideMove(currentState)
            } else {
                newState=playerWhite.provideMove(currentState)
            }
        } while newState != nil
        if currentState.turn == .Black {
            observer.recordResult(.WhiteWon,counter)
        } else {
            observer.recordResult(.BlackWon,counter)
        }
        
    }
    
    
}
