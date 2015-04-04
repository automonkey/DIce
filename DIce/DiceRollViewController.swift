import UIKit

class DiceRollViewController: UIViewController, DiceViewUpdating {

    @IBOutlet weak var diceValue: UILabel!

    var presentationModel: DicePresentationModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        presentationModel!.setView(self)

        presentationModel!.roll()
    }

    func setRollValue(value: String) {
        self.diceValue.text = value
    }

}
