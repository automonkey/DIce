import Foundation

class DicePresentationModel : NSObject {

    var diceRollGenerator:DiceRollGenerator?
    var onDiceValueUpdatedCallback:((diceValue: String) -> ())?

    func onDiceValueUpdated(callback: (diceValue: String) -> ()) {
        onDiceValueUpdatedCallback = callback
    }

    func roll() {
        let newValue = String(format: "%d", diceRollGenerator!.generateRoll())
        onDiceValueUpdatedCallback?(diceValue: newValue)
    }

}
