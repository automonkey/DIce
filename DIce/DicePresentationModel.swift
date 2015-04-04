import Foundation

protocol DiceViewUpdating : class {
    func setRollValue(value:String)
}

class DicePresentationModel : NSObject {

    let diceRollGenerator: DiceRollGenerator
    weak var view: DiceViewUpdating?

    init(diceRollGenerator:DiceRollGenerator) {
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
