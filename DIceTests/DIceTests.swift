import UIKit
import XCTest

class PresentationModelTests: XCTestCase {

    class StubDiceRollGenerator : DiceRollGeneration {
        var nextRollValue : Int = 1

        dynamic func generateRoll() -> Int {
            return nextRollValue
        }
    }

    class StubView : DiceViewUpdating {
        var lastRollValue : String?

        func setRollValue(value:String) {
            lastRollValue = value
        }
    }

    let stubRollGenerator = StubDiceRollGenerator()
    var view : StubView?
    var dicePresentationModel : DicePresentationModel?

    override func setUp() {
        super.setUp()

        view = StubView()
        dicePresentationModel = DicePresentationModel(diceRollGenerator: stubRollGenerator)
        dicePresentationModel!.setView(view!)
    }

    func testRollShouldGenerateValueAndReportToView() {
        stubRollGenerator.nextRollValue = 5

        dicePresentationModel!.roll()

        XCTAssertEqual(view!.lastRollValue!, "5")
    }

}
