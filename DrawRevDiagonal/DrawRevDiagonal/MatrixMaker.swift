//
//  MatrixMaker.swift
//  DrawRevDiagonal
//
//  Created by Rost on 13.11.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


class MatrixMaker {
    
    static func makeMatrix(_ size: Int) -> [[Int]] {
        var matrixArray: [[Int]] = []
        
        var iterator = 1
        for _ in 0 ..< size {
            var numbersArray = [Int]()
            
            for _ in 1 ..< size + 1 {
                numbersArray.append(iterator)
                iterator += 1
            }
            
            matrixArray.append(numbersArray)
        }

        return matrixArray
    }
}
