import Foundation

class DieView : UIView {

    let borderWidth:CGFloat = 4

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setOutline()
    }

    private func setOutline() {
        layer.borderWidth = 4
        layer.borderColor = UIColor.blackColor().CGColor
        layer.cornerRadius = 30
    }

    override func drawRect(rect: CGRect) {
        let dieFaceRect = CGRectInset(rect, borderWidth, borderWidth)
        drawSpot(dieFaceRect)
    }

    private func drawSpot(rect: CGRect) {
        let lineWidth:CGFloat = 2.0;
        let borderRect = CGRectInset(rect, lineWidth * 0.5, lineWidth * 0.5)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextSetFillColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextSetLineWidth(context, lineWidth)
        CGContextFillEllipseInRect (context, borderRect)
        CGContextStrokeEllipseInRect(context, borderRect)
    }
}
