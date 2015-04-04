import Foundation

protocol DiceViewUpdating : class {
    func setRollValue(value:String)
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
        let newValue = String(format: "%d", diceRollGenerator.generateRoll())
        view?.setRollValue(newValue)
    }

}
