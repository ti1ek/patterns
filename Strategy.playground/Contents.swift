import UIKit

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("professional swimming")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("non-swimming")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("professional diving")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("newbie diving")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("non-diving")
    }
}

class Human {
    var diveBehavior: DiveBehavior
    var swimBehavior: SwimBehavior
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    init(diveBehavior: DiveBehavior, swimBehavior: SwimBehavior) {
        self.diveBehavior = diveBehavior
        self.swimBehavior = swimBehavior
    }
}


let human = Human(diveBehavior: ProfessionalDiver(), swimBehavior: ProfessionalSwimmer())
human.performDive()
human.performSwim()
