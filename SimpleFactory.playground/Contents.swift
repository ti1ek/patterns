import UIKit

enum CarType {
    case huge, fast
}

protocol Car {
    
    func drive()
}

class HugeCar: Car {
    func drive() {
        print("you drive huge car")
    }
}

class FastCar: Car {
    func drive() {
        print("you drive fast car")
    }
}

class CarFactory {
    
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case . fast: car = FastCar()
        case . huge: car = HugeCar()
        }
        return car
    }
}

let hugeCar = CarFactory.produceCar(type: .huge)
let fastCar = CarFactory.produceCar(type: .fast)
