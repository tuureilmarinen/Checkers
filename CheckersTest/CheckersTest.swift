//
//  CheckersTest.swift
//  CheckersTest
//
//  Created by Tuure Ilmarinen on 26.7.2021.
//

import XCTest

@testable import Checkers

class CheckersTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here
        }
    }

}

class GameStateTests: XCTestCase {
    private var state:GameState
    override init(){
        state=GameState.defaultStart
        super.init();
        
    }
    
    override func setUp() {
        super.setUp()
        state=GameState(blackMen:0,blackKings:0,whiteMen:0,whiteKings:0,blackTurn:true)
    }
    
    func testPlayerWithNoPieces(){
        XCTAssertTrue(state.children.isEmpty, "Black cannot make any moves without pieces")
        state.whiteTurn=true
        XCTAssertTrue(state.children.isEmpty, "White cannot make any moves without pieces")
    }
    
    func testPiecesDontGetToLightSquaresOrOnTheSameSquare(){
        for x in 0...100 {
            let children=state.children
            guard !children.isEmpty else { break }
            XCTAssertTrue(children.allSatisfy({ $0.blackTurn == state.whiteTurn }), "Black and white turns should alternate.")

            state=children.randomElement()!
            
            XCTAssertEqual(((state.blackMen&state.blackKings)|(state.blackMen&state.whiteMen)|(state.blackMen&state.whiteKings)|(state.whiteMen&state.whiteKings)|(state.whiteMen&state.blackKings)|(state.whiteKings&state.blackKings)), UInt64(0), "No pieces should be on the same square (bm:\(state.blackMen), bk:\(state.blackKings), wm:\(state.whiteMen), wk:\(state.whiteKings))")
            
            XCTAssertEqual(state.blackMen&GameState.whiteSquares,UInt64(0),"Black men should stay in dark squares. (bm:\(state.blackMen), bk:\(state.blackKings), wm:\(state.whiteMen), wk:\(state.whiteKings))")
        }
    }
}
