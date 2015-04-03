import Foundation

class DicePresentationModel : NSObject {

    let diceRollGenerator:DiceRollGenerator
    var onDiceValueUpdatedCallback:((diceValue: String) -> ())?

    init(diceRollGenerator:DiceRollGenerator) {
        self.diceRollGenerator = diceRollGenerator
    }

    func onDiceValueUpdated(callback: (diceValue: String) -> ()) {
        onDiceValueUpdatedCallback = callback
    }

    func roll() {
        let newValue = String(format: "%d", diceRollGenerator.generateRoll())
        onDiceValueUpdatedCallback?(diceValue: newValue)
    }

}
