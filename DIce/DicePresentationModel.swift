import Foundation

protocol DiceViewUpdating : class {
    func setRollValue(value:Int)
}

class DicePresentationModel : NSObject {

    let diceRollGenerator: DiceRollGeneration
    weak var view: DiceViewUpdating?

    init(diceRollGenerator: DiceRollGeneration) {
        self.diceRollGenerator = diceRollGenerator
    }

    func setView(view: DiceViewUpdating) {
        self.view = view
    }

    func roll() {
        view?.setRollValue(diceRollGenerator.generateRoll())
    }

}
