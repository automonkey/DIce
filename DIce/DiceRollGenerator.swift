import Foundation

class DiceRollGenerator : NSObject {

    func generateRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
