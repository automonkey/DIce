import XCTest

class PresentationModelTests: XCTestCase {

    class StubDiceRollGenerator : DiceRollGeneration {
        var nextRollValue : Int = 1

        dynamic func generateRoll() -> Int {
            return nextRollValue
        }
    }

    class StubView : DiceViewUpdating {
        var lastRollValue : Int?

        func setRollValue(value:Int) {
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
        let testRollValue = 5
        stubRollGenerator.nextRollValue = testRollValue

        dicePresentationModel!.roll()

        XCTAssertEqual(view!.lastRollValue!, testRollValue)
    }

}
