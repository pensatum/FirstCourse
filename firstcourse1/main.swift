//
//  main.swift
//  firstcourse1
//
//  Created by admin on 15.02.2022.
//

import Foundation



 protocol CarProtocol {
     var brand: String { get }
     var model: String { get }
     var engineType: String { get }
     var transmission: String { get }
     var manufactureYear: UInt { get }
     var carMileage: UInt { get set }
     var horsePower: UInt { get }
     var fuelAmount: Double { get set }
     var isEngineRunning: Bool { get set }
     
     mutating func startEngine()
     mutating func stopEngine()

     func about()
 }


 extension CarProtocol {
     var fullCarName: String {
         return "\(brand) \(model)"
     }
     
     mutating func startEngine() {
         isEngineRunning = true
         print("\(fullCarName): Двигатель запущен")
     }

     mutating func stopEngine() {
         isEngineRunning = false
         print("\(fullCarName): Двигатель остановлен")
     }


     func about() {
         print("""
         Подробная информация автомобиля \(fullCarName):
         Тип двигателя: \(engineType)
         Тип трансмиссии: \(transmission)
         Год производства: \(manufactureYear)
         Пробег в км.: \(carMileage)
         Объём топлива в бензобаке в л.: \(fuelAmount)
         Мощность двигателя в л. с.: \(horsePower)
         Двигатель запущен - \(isEngineRunning)
         """)
     }
 }


 final class SportCar: CarProtocol {

     let brand: String
     let model: String
     let engineType: String
     let transmission: String
     let manufactureYear: UInt
     var carMileage: UInt
     let horsePower: UInt
     var fuelAmount: Double
     var isEngineRunning: Bool
     

     private let trunkCapacity: Double
     private var spaceOccupied: Double
     private let isThereThirdRowSeats: Bool
     private var isSpoilerInstalled: Bool
     private var isAutopilotOn: Bool
     private var isTrunkOpen: Bool
     private var isRoofOpen: Bool

   
     init(brand: String,
          model: String,
          engineType: String,
          transmission: String,
          manufactureYear: UInt,
          carMileage: UInt,
          horsePower: UInt,
          fuelAmount: Double,
          isEngineRunning: Bool = false,
          isGasTankEmpty: Bool = false,
          trunkCapacity: Double,
          spaceOccupied: Double = 0,
          isThereThirdRowSeats: Bool = false,
          isSpoilerInstalled: Bool = false,
          isAutopilotOn: Bool = false,
          isTrunkOpen: Bool = false,
          isRoofOpen: Bool = false)
     {
         self.brand = brand
         self.model = model
         self.engineType = engineType
         self.transmission = transmission
         self.manufactureYear = manufactureYear
         self.carMileage = carMileage
         self.horsePower = horsePower
         self.fuelAmount = fuelAmount
         self.isEngineRunning = isEngineRunning

         self.trunkCapacity = trunkCapacity
         self.spaceOccupied = spaceOccupied
         self.isThereThirdRowSeats = isThereThirdRowSeats
         self.isSpoilerInstalled = isSpoilerInstalled
         self.isAutopilotOn = isAutopilotOn
         self.isTrunkOpen = isTrunkOpen
         self.isRoofOpen = isRoofOpen
     }
 }

var merc = SportCar(brand: "Mercedes",
                       model: "GLC",
                       engineType: "Gasoline",
                       transmission: "Automatic",
                       manufactureYear: 2000,
                       carMileage: 5000,
                       horsePower: 120,
                       fuelAmount: 200,
                       trunkCapacity: 220)

merc.about()



