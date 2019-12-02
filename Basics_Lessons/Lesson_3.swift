//
//  Lesson_3.swift
//  Basics_Lessons
//
//  Created by User on 02/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation


enum WindowState {
    case open, close
}

enum EngineCondition {
    case start, finish
}

enum Color {
    case black, white
}

enum Transmision {
    case auto, manual
}

enum Trunk {
    case download, unload
}

struct Car {
    var mark: String
    var yearOfIssue: Int
    var color: Color
    
    var fullTrunkMax = 220
    
    var checkTrunk: Int {
        get{
            return fullTrunkMax
        }set{
            newValue < 0 || newValue > fullTrunkMax ? print("Загрузка в багажник не возможна") : print("Груз погружен")
        }
    }
    
    init(_ mark: String, _ yearOfIssue: Int, _ color: Color){
          self.mark = mark
          self.yearOfIssue = yearOfIssue
          self.color = color
      }
    
    
    func infoAboutCar() {
        print("Марка: \(mark), Год выпуска: \(yearOfIssue), Цвет: \(color)")
}
    
    
    
    var engine: EngineCondition {
        get{
            return.start
        }set{
            // свойство изменяется функцией engineAction
        }
    }
    
    // изменяем свойства engine
    mutating func engineAction(_ type: EngineCondition ){
        self.engine = type
        switch type {
        case .start:
            engine = .start
            print("Двигатель заведен")
        case .finish:
            engine = .finish
            print("Двигатель заглушен")
            //        default:
            //            break
        }
        
    }
    
    var window: WindowState {
        get{
            return.open
        }set{
            // свойство изменяется функцией windowsAction
        }
    }
    
    // изменяем свойства window
    mutating func windowsAction(_ type: WindowState ){
        self.window = type
        switch type {
        case .open:
            window = .open
            print("Окно открыто")
        case .close:
            window = .close
            print("Окно закрыто")
        }
    }
    
    var trunk: Trunk {
        get{
            return.download
        }set{
            // свойство изменяется функцией trunkAction
        }
    }
    
    // изменяем свойства trunk
    mutating func trunkAction(_ type: Trunk ){
        self.trunk = type
        switch type {
        case .download:
            trunk = .download
            print("Багажник загружен")
        case .unload:
            trunk = .unload
            print("Багажник пустой")
        }
    }
    
    
}

var bmwCar = Car("BMW", 2019, .black)
var audiCar = Car("Audi", 2019, .white)


bmwCar.infoAboutCar()
bmwCar.engineAction(.start)
bmwCar.windowsAction(.open)
bmwCar.checkTrunk = 200
bmwCar.trunkAction(.download)



audiCar.infoAboutCar()
audiCar.engineAction(.finish)
audiCar.windowsAction(.close)
audiCar.checkTrunk = 300
audiCar.trunkAction(.unload)
