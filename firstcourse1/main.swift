//
//  main.swift
//  firstcourse1
//
//  Created by admin on 15.02.2022.
//

import Foundation


 var one = [String]()
 var two = [Int]()

 struct Queue <T> {

     var items = [T]()

     mutating func push(item: T) {
         items.append(item)
     }

     mutating func push() -> T {
         return items.removeFirst()
     }

     func filter(_ value: (T) -> Bool) -> [T] {
         var result = [T] ()
         for item in items {
 
 
             if value(item) {
                 result.append(item)
             }
         }
         return result
     }

     subscript(index: Int) -> T? {
         guard index < items.count, index >= 0 else { return nil }
         return items[index]
     }
 }

 extension Queue: CustomStringConvertible {
     var description: String {
         return "\(Array(items.reversed()))"
     }
 }

 var arraysOne = Queue(items: one)
 arraysOne.push(item: "Sasha")
 arraysOne.push(item: "Roma")
 print(arraysOne.items)

 var arraysTwo = Queue(items: two)
 arraysTwo.push(item: 50)
 arraysTwo.push(item: 55)
 arraysTwo.push(item: 75)
 print(arraysTwo.items)

