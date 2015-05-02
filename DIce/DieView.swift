import Foundation

class DieView : UIView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        layer.borderWidth = 4;
        layer.borderColor = UIColor.blackColor().CGColor;
        layer.cornerRadius = 30;
    }
}
