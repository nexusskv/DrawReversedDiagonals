//
//  main.swift
//  DrawRevDiagonal
//
//  Created by Rost on 12.11.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation

/*
 Задача 3 из собеседования в Yandex: Дана матрица NxN. Напечатать обратные диагонали.

 // Input:
 // 1 2 3
 // 4 5 6
 // 7 8 9
 
 // Output:
 // 1
 // 4 2
 // 7 5 3
 // 8 6
 // 9
 
 // Input:
 // 1  2  3  4  5
 // 6  7  8  9  10
 // 11 12 13 14 15
 // 16 17 18 19 20
 // 21 22 23 24 25

 // Output:
 // 1
 // 6   2
 // 11  7   3
 // 16  12  8   4
 // 21  17  13  9   5
 // 22  18  14  10
 // 23  19  15
 // 24  20
 // 25
 
 */


let sourceArray = MatrixMaker.makeMatrix(10)                 // Make any matrix dynamycally

print("Source matrix:")
Printer.printArray(sourceArray)                             // Show source in console
print("\n")
let resultNumbers = ResultsMaker.makeResults(sourceArray)   // Make reversed diagonals

print("Reversed diagonals of source matrix:")
Printer.printArray(resultNumbers)                           // Show results in console





