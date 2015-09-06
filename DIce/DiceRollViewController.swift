import UIKit
import SnapKit

class DiceRollViewController: UIViewController, DiceViewUpdating {

    @IBOutlet weak var dieDisplayContainerView: UIView!

    @IBAction func roll(sender: AnyObject) {
        presentationModel?.roll()
    }

    var presentationModel:DicePresentationModel!
    var dieFaceModelGenerator:DieFaceModelGenerator!
    var dieView:DieView!

    override func viewDidLoad() {
        super.viewDidLoad()

        presentationModel.setView(self)

        dieView.backgroundColor = UIColor.whiteColor()
        dieDisplayContainerView.addSubview(dieView)

        dieView.snp_makeConstraints {
            make in

            make.edges.equalTo(dieDisplayContainerView)
        }
    }

    func setRollValue(value: Int) {
        dieView.updateViewModel(dieFaceModelGenerator.generateModelForValue(value))
    }

}
