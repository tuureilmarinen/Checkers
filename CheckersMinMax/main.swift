//
//  main.swift
//  CheckersMinMax
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation

import ArgumentParser


struct RuntimeError: Error {
    let message: String
    
    init(_ message: String) {
        self.message = message
    }

    public var localizedDescription: String {
        return message
    }
}
extension UInt64 {
    subscript(index: Int) -> Bool {
        get {
            return self&(1<<index) > 0
        }
        set(newValue) {
            if newValue {
                self = self | (1<<index)
            } else {
                self = self & (~(1<<index))
            }
        }
    }
}


struct Checkers: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Play American 8x8 checkers.")
    static let players: [String:CheckersPlayer.Type] = [
        "cli":CheckersHumanPlayer.self,
        "min-max-alpha-beta": CheckersMinMax.self,
        "random": CheckersRandomPlayer.self
    ]

    @Option(help: "Black player.")
    var black: String?
    
    @Option(help: "White player.")
    var white: String?
    
    @Option(help: "Initial starting position.")
    var fen: String?
    
    func validate() throws {
        guard fen == nil || TerminalUI.PSNfenToGameState(fen!) != nil else {
            throw ValidationError("Initial starting position is invalid.")
        }
        
        guard black != nil else {
            throw ValidationError("Unspecified black player.")
        }
        
        guard white != nil  else {
            throw ValidationError("Unspecified white player.")
        }
        
        guard Checkers.players[black!] != nil else {
            throw ValidationError("Invalid black player.")
        }
        guard Checkers.players[white!] != nil else {
            throw ValidationError("Invalid white player.")
        }
    }


    func run() {
        let blackType: CheckersPlayer.Type = Checkers.players[black!]!
        let whiteType: CheckersPlayer.Type = Checkers.players[white!]!
        let blackPlayer = blackType.init()
        let whitePlayer = whiteType.init()
        print(blackType,whiteType)
        let startState = TerminalUI.PSNfenToGameState(fen) ?? GameState.defaultStart
        
        let observer=GameTerminalObserver(blackPlayer,whitePlayer)
        let game = GameController(blackPlayer,whitePlayer, observer)
        game.playGame(startState)
    }
}
func bb(_ x:UInt64)->Void{print("0b"+String(x, radix:2).reversed().enumerated().reversed().map({(i,x) in i>0 && i.isMultiple(of: 4) ? "\(x)_" : "\(x)" }).joined()) }

Checkers.main()

