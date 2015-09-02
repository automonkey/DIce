import UIKit

class DiceRollViewController: UIViewController, DiceViewUpdating {

    @IBOutlet weak var dieView: DieView!

    @IBAction func roll(sender: AnyObject) {
        presentationModel?.roll()
    }

    var presentationModel:DicePresentationModel!
    var dieFaceModelGenerator:DieFaceModelGenerator!

    override func viewDidLoad() {
        super.viewDidLoad()

        presentationModel.setView(self)
    }

    func setRollValue(value: Int) {
        dieView.updateViewModel(dieFaceModelGenerator.generateModelForValue(value))
    }

}
