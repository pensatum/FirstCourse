//
//  main.swift
//  firstcourse1
//
//  Created by admin on 15.02.2022.
//

import Foundation

enum Action {
     case startEngine
     case stopEngine
     case closeWindows
     case openWindows
     }
 
 class Car {
     let name: String
     let year: Int
     var isEngineOn = false
     var isWindowsOpened = false

     init(name: String, year: Int, isEngineOn: Bool)
     {
         self.name = name
         self.year = year
         self.isEngineOn = isEngineOn
     }

     deinit { print("\(name) удален") }
     
     func printCharacteristics() {
         print("Mark:\(name) Year: \(year) Engine: \(isEngineOn)")
         
     }

     func action(action: Action) {
         switch action {
         case .startEngine:
             isEngineOn = true
             print("запуск двигателя")

         case .stopEngine:
             isEngineOn = false
             print("отключение двигателя")

         case .closeWindows:
             isWindowsOpened = false
             print("Окна закрыты")

         case .openWindows:
             isWindowsOpened = true
             print("Окна открыты")
         }
     }
 }


 final class SportCar: Car {
     let nameForGames: String

     init(name: String, year: Int, nameForGames: String) {
         self.nameForGames = nameForGames
         super.init(name: name, year: year, isEngineOn: true)
     }

     override func action(action: Action) {
         super.action(action: action)
     }

     override func printCharacteristics() {
         super.printCharacteristics()
         print("Имя: \(nameForGames)")
     }
 }



 final class TruckCar : Car {

     let height: Double

     init(name: String,
                   year: Int, height: Double)
     {
         self.height = height
         super.init(name: name, year: year, isEngineOn: true)
     }

     override func printCharacteristics() {
         super.printCharacteristics()
         print("Высота: \(height)")
     }

     override func action(action: Action) {
         switch action {
             //изменила багажник на кузов

         case .startEngine:
             isEngineOn = true
             print("Идет запуск двигателя")

         case .stopEngine:
             isEngineOn = false
             print("Идет глушение двигателя")

         case .closeWindows:
             isWindowsOpened = false
             print("Окна закрываются")

         case .openWindows:
             isWindowsOpened = true
             print("Окна открываются")

             }
         }
     }
 


 var truck = TruckCar(name: "Chevrolet", year: 2012, height: 1.3)

 var sportCar = SportCar(name: "Mazda",
                         year: 2001, nameForGames: "SportDragon")
var sportCarTwo = SportCar(name: "BMW", year: 2022, nameForGames: "Burn")



 truck.printCharacteristics()

 sportCar.printCharacteristics()

sportCarTwo.printCharacteristics()

 // проверка deinit

 var car: Car?

car = Car(name: "Mazda", year: 2001, isEngineOn: true)


 car = nil
