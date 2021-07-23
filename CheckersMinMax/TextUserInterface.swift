//
//  TextUserInterface.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation

func printState(state: GameState) {
    let BOARD_WIDTH = 8
    let BOARD_HEIGHT = 8
    var piece: CheckersPiece
    for y in 0...BOARD_HEIGHT-1 {
        for x in 0...BOARD_WIDTH-1 {
            let pos = y*BOARD_HEIGHT+x
            piece=state.pieceAt(pos)
            switch piece {
            case CheckersPiece.BlackMan:
                print("b", terminator:"")
                break
            case CheckersPiece.BlackKing:
                print("B", terminator:"")
                break
            case CheckersPiece.RedKing:
                print("R", terminator:"")
                break
            case CheckersPiece.RedMan:
                print("r", terminator:"")
                break
            default:
                print(" ", terminator:"")
            }
        }
    }
}
