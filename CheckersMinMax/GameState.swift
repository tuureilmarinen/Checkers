//
//  GameState.swift
//  CheckersMinMax
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation

enum CheckersPiece {
    case BlackMan, BlackKing, RedMan, RedKing, Empty
}

struct GameState: Hashable {
    var blackMen: UInt64
    var blackKings: UInt64
    var redMen: UInt64
    var redKings: UInt64
    
    /*
     BLACK
     1  2  3  4  5  6  7  8
     9  10 11 12 13 14 15 16
     17 18 19 20 21 22 23 24....
     RED
     
     only even numbered fields are used in english daughts
     
     -b-b-b-b
     b-b-b-b-
     --------
     --------
     --------
     --------
     
     
     */
    let edges:UInt64 = 18411139144890810879
    // 0b1111_1111_1000_0001_1000_0001_1000_0001_1000_0001_1000_0001_1000_0001_1111_1111
    
    let redEndMask:UInt64 = 18374686479671623680
    // 0b1111_1111_0000...
    
    let blackEndMask:UInt64 = 255
    // 0b0000_0000_0000_.......1111_1111
    
    var blackPieces:UInt64 {
        return blackMen & blackKings
    }
    var redPieces: UInt64 {
        return redMen & redKings
    }
    var blackTurn: Bool
    var redTurn: Bool {
        return !blackTurn
    }
    
    func getLegalMoves() -> Set<GameState>{
        if blackTurn {
            // eat
            let blkMenA:UInt64=blackPieces<<7-blackPieces&redPieces-edges<<7-blackPieces-redPieces
            // blackPieces<<7 = move
            // &!blackPieces = where there are no other black pieces on way (redundant?)
            // & redPieces = where is an red piece on the way
            // &!edges = and piece to be captured is not on the edge
            // <<7 = and now attention moves on the landing spot
            // &!(blackPieces|redPieces) = which must be free from other pieces

            let blkMenB:UInt64=blackPieces<<9-blackPieces&redPieces-edges<<9-blackPieces-redPieces

            
            blackPieces<<9-blackPieces
        }
    }
    
    func pieceAt(pos: Int) -> CheckersPiece {
        if (blackMen>>pos & 1) == 1 { return CheckersPiece.BlackMan }
        else if (blackKings>>pos & 1) == 1 { return CheckersPiece.BlackKing }
        else if (redKings>>pos & 1) == 1 { return CheckersPiece.RedKing }
        else if (redMen>>pos & 1) == 1 { return CheckersPiece.RedMan }
        else { return CheckersPiece.Empty }
    }
    
    private static func bitAt(a: Int, pos: Int) -> Bool {
        return (a>>pos & 1) == 1
    }

}
