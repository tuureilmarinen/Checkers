//
//  TextUserInterface.swift
//  Checkers
//
//  Created by Tuure Ilmarinen on 23.7.2021.
//

import Foundation
import Rainbow

struct BoardDrawing {
    static let leftTop="\u{250f}"
    static let rightTop="\u{2513}"
    static let leftBottom="\u{2517}"
    static let rightBottom="\u{251b}"
    static let topRowDivider="\u{252F}"
    static let bottomRowDivider="\u{2537}"
    static let middleRowDivider="\u{253C}"
    static let rightMiddle="\u{2528}"
    static let leftMiddle="\u{2520}"
    static let verticalBarThin="\u{2502}"
    static let verticalBarBold="\u{2503}"
    static let horizontalBarThin="\u{2500}" // jos liian lyhyt esim 2508
    static let horizontalBarBold="\u{2501}"
    static let topRow = "   " + leftTop+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+topRowDivider+horizontalBarBold+rightTop
    static let middleRow = "   " + leftMiddle+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+middleRowDivider+horizontalBarThin+rightMiddle
    static let bottomRow = "   " + leftBottom+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+bottomRowDivider+horizontalBarBold+rightBottom
    static let pieceSymbol : [CheckersPiece:String] = [
        .BlackKing: "\u{25c6}", //"◆", // ◆ U+25C6
        .BlackMan: "\u{25cf}", //""●", // ● U+25CF
        .WhiteMan: "\u{25cb}", //""○", // ○ U+25CB
        .WhiteKing: "\u{25c7}", //""◇", // ◇ U+25C7
        .Empty:" "
        
    ]
}

enum TerminalUI {
    
    static func printMask(_ h: UInt64=0, _ v: UInt64=0) -> Void {
        //return
        let BOARD_WIDTH = 8
        let BOARD_HEIGHT = 8
        for y in 0...BOARD_HEIGHT-1 {
            print(String(format: "%02d ", 1+(y*BOARD_WIDTH)/2), terminator:"")
            for x in 0...BOARD_WIDTH-1 {
                let pos = y*BOARD_HEIGHT+x
                if h[pos] && v[pos] {
                    print("+".onLightWhite, terminator:"")
                }
                else if h[pos] {
                    print("|".onLightWhite, terminator:"")
                } else if v[pos] {
                    print("–".onLightWhite, terminator:"")
                }
                else if GameState.darkSquares[pos] {
                    print(" ".onLightWhite, terminator:"")
                } else {
                    print(" ".onLightBlack, terminator:"")
                }
            }
            print(String(format: " %02d ", ((y+1)*BOARD_WIDTH)/2))
        }
    }
    
    static func printState(_ state: GameState) -> Void {
        print("")
        print(TerminalUI.stateToFen(state))
        let BOARD_WIDTH = 8
        let BOARD_HEIGHT = 8
        var piece:CheckersPiece
        print("   \((state.blackTurn ? "->" : "  ")) \(BoardDrawing.pieceSymbol[CheckersPiece.BlackMan]!) \(String(format: "%01d",state.blackMen.nonzeroBitCount))    \(BoardDrawing.pieceSymbol[CheckersPiece.BlackKing]!) \(String(format: "%01d",state.blackKings.nonzeroBitCount)) \((state.blackTurn ? "<-" : "  "))")
        print(BoardDrawing.topRow)
        for y in 0...BOARD_HEIGHT-1 {
            if y>0 { print(BoardDrawing.middleRow)}
            print(String(format: "%02d ", 1+(y*BOARD_WIDTH)/2), terminator:"")
            print(BoardDrawing.verticalBarBold, terminator:"")
            for x in 0...BOARD_WIDTH-1 {
                if x>0 && x<(BOARD_WIDTH) {print(BoardDrawing.verticalBarThin, terminator:"")}
                let pos = y*BOARD_HEIGHT+x
                piece=state.pieceAt(pos)
                
                let whiteOnBlackTerminal=true
                if piece == .Empty {
                    if GameState.darkSquares[pos] != !whiteOnBlackTerminal {
                        print(BoardDrawing.pieceSymbol[piece]!, terminator:"")
                    } else {
                        print(BoardDrawing.pieceSymbol[piece]!.onLightWhite, terminator:"")
                    }
                } else {
                    print(BoardDrawing.pieceSymbol[piece]!, terminator:"")
                }
                /*}*/
            }
            print(BoardDrawing.verticalBarBold+" "+String(format: " %02d ", ((y+1)*BOARD_WIDTH)/2))
        }
        print(BoardDrawing.bottomRow)
        print("   \((state.whiteTurn ? "->" : "  ")) \(BoardDrawing.pieceSymbol[CheckersPiece.WhiteMan]!) \(String(format: "%01d",state.whiteMen.nonzeroBitCount))    \(BoardDrawing.pieceSymbol[CheckersPiece.WhiteKing]!) \(String(format: "%01d",state.whiteKings.nonzeroBitCount)) \((state.whiteTurn ? "<-" : "  "))")
    }
    static func getKeyboardInput() -> String {
        return String(data: FileHandle.standardInput.availableData, encoding: String.Encoding.utf8)!.trimmingCharacters(in: CharacterSet.newlines)
    }
        
    static func selectOption<T>(_ options: [(String,T)]) -> T? {
        
        for (n,(s,_)) in options.enumerated() {
            print(String(format:"%02d. %@",n+1,s))
        }

        var selection:T?
        repeat {
            let kbd=getKeyboardInput()
            let kbdI=Int(kbd)
            guard kbdI != nil else { continue }
            let selectedNumber = kbdI!
            guard selectedNumber > 0 else { return nil }
            guard 0 < (selectedNumber+1) && (selectedNumber-1) <= options.endIndex else {
                print("Invalid number.")
                continue
            }
            (_,selection) = options[selectedNumber-1]

        } while selection == nil
        return selection!
    }
        
    /// Returns the square number of a dark square in the format used in the Portable Draughts Notation
    static func IntToPDN(_ i:Int) -> Int{
        return (i/2)+1
    }
    
    static func PDNToInt(_ p:Int) -> Int{
        return 2*p-(1+(p/4)%2)
    }

    static func stateToFen(_ state: GameState) -> String {
        var w:[String]=[]
        var b:[String]=[]
        //var ret=state.blackTurn ? "B" : "W"
        for x in 0...63 {
            if state.blackMen[x] {
                b.append(String(x))
            }
            if state.blackKings[x] {
                b.append("K"+String(x))
            }
            if state.whiteMen[x] {
                w.append(String(x))
            }
            if state.whiteKings[x] {
                w.append("K"+String(x))
            }
        }
        return (state.blackTurn ? "B" : "W")+":W"+(w.joined(separator:","))+":B"+(b.joined(separator:","))
        
        
    }
    static func PSNfenToGameState(_ fen: String?) -> GameState? {
        guard fen != nil else { return nil }
        let fen = fen!
        func bitboards(_ s : String) -> (UInt64, UInt64) {
            var men: UInt64 = 0
            var kings: UInt64 = 0
            let pieces = s.split(separator: ",", omittingEmptySubsequences: true)
            for x in pieces {
                let (k, n) = parseNumberKing(String(x))
                if k {
                    kings[n]=true
                } else {
                    men[n]=true
                }
            }
            return (men,kings)
            
        }
        // wheter piece is king psn number
        func parseNumberKing(_ x: String) -> (Bool, Int) {
            if x.prefix(1)=="K" || x.prefix(1)=="k" {
                return (Bool(true), Int(String(x[x.index(x.startIndex, offsetBy: 1)..<x.endIndex]))!)
            }
            return (Bool(false), Int(x)!)
            
        }
        
        
        let tmp = fen.split(separator: ":", maxSplits: 3, omittingEmptySubsequences: true)
        let turn = tmp[0]
        let a=tmp[1]
        let b=tmp[2]
        let blackTurn = turn=="b"||turn=="B" ? true : false
        
        let ab = bitboards(String(a[a.index(a.startIndex, offsetBy: 1)..<a.endIndex]))
        let bb = bitboards(String(b[b.index(b.startIndex, offsetBy: 1)..<b.endIndex]))
        
        let ((bm,bk),(wm,wk)) = a.prefix(1)=="B" || a.prefix(1)=="b" ? (ab,bb) : (bb,ab)
        
        return GameState(blackMen: bm, blackKings: bk, whiteMen: wm, whiteKings: wk, blackTurn: blackTurn)
    }
    
    
    
    static func getMove(_ previousState: GameState, _ newState: GameState) -> (Int,Int) {

        let (prev,curr) = newState.blackTurn ? (previousState.whitePieces, newState.whitePieces) : (previousState.blackPieces, newState.blackPieces)
        let from = ((prev^curr)&prev).trailingZeroBitCount
        let to = ((prev^curr)&curr).trailingZeroBitCount
        return (from,to)
    }
}
