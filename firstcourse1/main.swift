//
//  main.swift
//  firstcourse1
//
//  Created by admin on 15.02.2022.
//

import Foundation

struct Car {

    let type: String
    var year: Int
    let volume: Int
    var enganeWork: Bool
    var windowOpen: Bool
    var emptyVolume: Bool
    let mark: String
    let colour: String
    var mileage: Int

}

var carOne = Car.init(
    type: "sport car",
    year: 2021,
    volume: 1000,
    enganeWork: false,
    windowOpen: true,
    emptyVolume: false,
    mark: "Chevrolet",
    colour: "yellow",
    mileage: 5000)
var carTwo = Car.init(
    type: "trunkCar",
    year: 2015, volume: 2000,
    enganeWork: false,
    windowOpen: false,
    emptyVolume: true,
    mark: "Audi",
    colour: "green",
    mileage: 41000)

print(" характеристики авто  \(carOne) ")
print(" характеристики авто  \(carTwo) ")



enum Condition {
    case on
    case off
}

let on = Condition.on
let off = Condition.off

func chooseCondition (engane: Condition, window: Condition, volume: Condition) {
    switch engane {
    case .on:
        carOne.enganeWork = true
        carTwo.enganeWork = true
    case .off:
        carOne.enganeWork = false
        carTwo.enganeWork = false
       
    }
    
    switch window {
    case .on:
        carOne.windowOpen = true
        carTwo.windowOpen = true
    case .off:
        carOne.windowOpen = false
        carTwo.windowOpen = false
    }
    
    switch volume {
    case .on:
        carOne.emptyVolume = true
        carTwo.emptyVolume = true
    case .off:
        carOne.emptyVolume = false
        carTwo.emptyVolume = false
    }
    
}
chooseCondition(engane: on, window: on, volume: off)

print(carOne)
print(carTwo)

