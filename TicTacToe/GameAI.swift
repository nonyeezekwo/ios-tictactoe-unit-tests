//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    /*
            x o -
            x o -
            x - -
            */
// Check verticals wins. a column of x's or o's
    for x in 0..<3 {
        var numMarks = 0
        for y in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        if numMarks == 3 {
            return true
        }
    }
    // check horizontal
    for y in 0..<3 {
           var numMarks = 0
           for x in 0..<3 {
               if board[(x, y)] == player {
                   numMarks += 1
               }
           }
           if numMarks == 3 {
               return true
           }
       }
    // check diagonals
       
    
    return false

}
