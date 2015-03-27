import Foundation

class DicePresentationModel {

    let diceRollGenerator = DiceRollGenerator()
    var onDiceValueUpdatedCallback:((diceValue: String) -> ())?

    init() { }

    func onDiceValueUpdated(callback: (diceValue: String) -> ()) {
        onDiceValueUpdatedCallback = callback
    }

    func roll() {
        let newValue = String(format: "%d", diceRollGenerator.generateRoll())
        onDiceValueUpdatedCallback?(diceValue: newValue)
    }

}
