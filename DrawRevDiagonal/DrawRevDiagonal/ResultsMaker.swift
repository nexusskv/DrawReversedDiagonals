//
//  ResultsMaker.swift
//  DrawRevDiagonal
//
//  Created by Rost on 13.11.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


class ResultsMaker {
    
    static func makeResults(_ source: [[Int]]) -> [[Int]] {
        let matrixSize  = source.count
        let resultsSize = matrixSize + (matrixSize - 1)
        
        var resultNumbers: [[Int]] = []

        for n in 0 ..< resultsSize {
            if n == 0 {
                if let firsts = source.first {
                    if let first = firsts.first {
                        resultNumbers.append([first])
                    }
                }
            } else if n == resultsSize - 1 {
                if let lasts = source.last {
                    if let last = lasts.last {
                        resultNumbers.append([last])
                    }
                }
            } else if n < matrixSize {
                var indexCount = n - 1
                
                for i in 1 ..< matrixSize - 1 {
                    var nextIndex = i
                    
                    var catetArray: [Int] = []
                    
                    let numbers = source[n]
                    if let first = numbers.first {
                        catetArray.append(first)
                    }
                    
                    while indexCount >= 0 && nextIndex < matrixSize {
                        let numbers = source[indexCount]
                        let number = numbers[nextIndex]
                        
                        catetArray.append(number)
                        
                        nextIndex += 1
                        indexCount -= 1
                    }
                    
                    if catetArray.count > 1 {
                        resultNumbers.append(catetArray)
                    }
                }
            } else {
                var indexCount = matrixSize - 1
                var nextIndex = n - indexCount
                
                for _ in 1 ..< matrixSize - 1 {
                    var catetArray: [Int] = []
                       
                    while indexCount >= 0 && nextIndex < matrixSize {
                        let numbers = source[indexCount]
                        let number = numbers[nextIndex]
                        
                        catetArray.append(number)
                        
                        nextIndex += 1
                        indexCount -= 1
                    }
                    
                    if catetArray.count > 1 {
                        resultNumbers.append(catetArray)
                    }
                }
            }
        }
        
        return resultNumbers
    }
}
