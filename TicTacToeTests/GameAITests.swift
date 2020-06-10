//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Nonye on 6/10/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {

    func testWinChckecingVertical1() {
        /*
         x o -
         x o -
         x - -
         */
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVeritcal2() {
        /*
        x o -
        x o -
        - o -
        */
        var board = GameBoard()
         try! board.place(mark: .x, on: (0, 0))
         try! board.place(mark: .o, on: (1, 0))
         try! board.place(mark: .x, on: (0, 1))
         try! board.place(mark: .o, on: (1, 1))
         try! board.place(mark: .x, on: (0, 2))
         
         XCTAssertTrue(game(board: board, isWonBy: .x))
         XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckVertical3() {
        
    }
    
    func testWinCheckingHorizontal1() {
        
    }


}
