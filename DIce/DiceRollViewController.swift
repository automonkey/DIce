import UIKit

class DiceRollViewController: UIViewController, DiceViewUpdating {

    @IBOutlet weak var dieView: DieView!

    @IBAction func roll(sender: AnyObject) {
        presentationModel?.roll()
    }

    var presentationModel: DicePresentationModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        presentationModel!.setView(self)
    }

    func setRollValue(value: Int) {
    }

}
