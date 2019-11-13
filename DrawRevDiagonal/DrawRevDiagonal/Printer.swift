//
//  Printer.swift
//  DrawRevDiagonal
//
//  Created by Rost on 13.11.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


class Printer {
    
    static func printArray(_ array: [[Int]]) {
        for numbers in array {
            let stringArray = numbers.map { String($0) }
            var resultString = stringArray.joined(separator: ",")
            resultString = resultString.replacingOccurrences(of: ",", with: "\t")
            print(resultString)
        }
    }
}
