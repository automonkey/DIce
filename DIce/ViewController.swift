import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceValue: UILabel!

    let presentationModel = DicePresentationModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        presentationModel.onDiceValueUpdated { [weak self] (newValue: String) -> () in
            self?.diceValue.text = newValue
            return
        }

        presentationModel.roll()
    }

}
