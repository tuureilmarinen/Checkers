//
//  CheckersHumanPlayer.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation

struct CheckersHumanPlayer: CheckersPlayer {
    public init() {}
    func provideMove(_ state: GameState) -> GameState? {
        func diffToPSN(_ a:(Int,Int)) -> String {
            // todo muuta oikeasti psn eikä sisäinen tapa...
            let str = String(format: "%02d-%02d %d", a.0, a.1, UInt8.random(in: 0...UInt8.max))
            
            return str
        }
        let choices: [(String,GameState)] = Array(state.children.map {
                //return (diffToPSN(CheckersHumanPlayer.diffToMove(state, $0)),$0)
            let (from,to)=TerminalUI.getMove(state, $0)
            let countsString = ["bm: \(state.blackMen.nonzeroBitCount)", (state.blackKings>0 ? "bk: \(state.blackKings.nonzeroBitCount)" : "") , "wm: \(state.whiteMen.nonzeroBitCount)" + (state.whiteKings>0 ? "wk: \(state.whiteKings.nonzeroBitCount)" : "")].filter { !$0.isEmpty}.joined(separator: ", ")
            let optionString="\(TerminalUI.IntToPDN(from))->\(TerminalUI.IntToPDN(to)) (\(from)->\(to)) \(countsString)\n\t\(TerminalUI.stateToFen($0))"
                return (optionString,$0)
            }
        )
        return TerminalUI.selectOption(choices)
    }
    // (from,to)
    private static func diffToMove(_ first: GameState, _ second: GameState) -> (Int,Int) {
        let diff=first.allPieces^second.allPieces
        return ((first.allPieces&diff).trailingZeroBitCount, (second.allPieces&diff).trailingZeroBitCount)
    }
    
    
    
}
