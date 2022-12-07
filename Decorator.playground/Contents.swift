import UIKit

protocol Porsche{
    
    func getPrice() -> Double
    func getDescription() -> String
}

class Boxster: Porsche {
    func getPrice() -> Double {
        return 120
    }
    
    func getDescription() -> String {
        return "Porsche Boxster"
    }
}

class PoscheDecorator: Porsche {

    private let decoratedPorsche: Porsche
    
    required init(decoratedPorsche: Porsche) {
        self.decoratedPorsche = decoratedPorsche
    }
    
    func getPrice() -> Double {
        return decoratedPorsche.getPrice()
    }
    
    func getDescription() -> String {
        return decoratedPorsche.getDescription()
    }
}

class PremiumAudioSystem: PoscheDecorator {
    
    required init(decoratedPorsche: Porsche) {
        super.init(decoratedPorsche: decoratedPorsche)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with premium audio system"
    }
}

class PanoramicSunroof: PoscheDecorator {
    required init(decoratedPorsche: Porsche) {
        super.init(decoratedPorsche: decoratedPorsche )
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 20
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with panoramic sunroof"
    }
}


var porscheBoxster: Porsche = Boxster()
porscheBoxster.getDescription()
porscheBoxster.getPrice()

porscheBoxster = PremiumAudioSystem(decoratedPorsche: porscheBoxster)
porscheBoxster.getDescription()
porscheBoxster.getPrice()

porscheBoxster = PanoramicSunroof(decoratedPorsche: porscheBoxster)
porscheBoxster.getDescription()
porscheBoxster.getPrice()
