//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Nonye on 6/10/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {
    //1. Can we create a board thats empty
    //With any functional test, be sure to name it with test_____
    func testCreatingEmptyBoard() {
        let board = GameBoard()
        
        for x in 0..<3 {
            for y in 0..<3 {
                // asserting that the value returned from this should be nil
                XCTAssertNil(board[(x, y)])
            }
        }
    }
    
    func testPlacingMarks() {
        var board = GameBoard()
        // try and change the mark and make sure it succeeds
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 0)))
        // no we make sure the  state of the board is the state we expect , for the state to be o
        XCTAssertEqual(board[(0,0)], .o)
        //what if we wanna place an x in the lower right corner
        XCTAssertNoThrow(try board.place(mark: .x, on: (2,2)))
        XCTAssertEqual(board[(2,2)], .x)
        
        for x in 0..<3 {
            for y in 0..<3 {
                if x == 0 && y == 0 { continue }
                if x == 2 && y == 2 { continue }
                XCTAssertNil(board[(x, y)])
            }
        }
        
        XCTAssertThrowsError(try board.place(mark: .x, on: (0, 0))) { error in
            XCTAssertEqual(error as? GameBoardError, GameBoardError.invalidSquare)
        }
    }
    
    func testISFull() {
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (0, 1))
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (2, 0))
        try! board.place(mark: .x, on: (0, 2))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 1))
        try! board.place(mark: .o, on: (1, 2))
        XCTAssertFalse(board.isFull)
        
        try! board.place(mark: .x, on: (2, 2))
        XCTAssertTrue(board.isFull)
        
    }

}


//var array = [Int]()
//    //assigning in a value to an index. "an array subcirpt 0, go to the arrays index of 0 then put in a one"
//    //before []
//    array[0] = 1
//    //[1]
//
//    print(array[0])
//
