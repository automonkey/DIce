import Foundation

@objc
protocol DiceRollGeneration {
    func generateRoll() -> Int
}

class DiceRollGenerator : NSObject, DiceRollGeneration {

    func generateRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
