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

        for dotRect in getSpotRects(rect) {
            drawSpot(dotRect)
        }
    }

    private func getSpotRects(rect: CGRect) -> [CGRect] {
        let cols = 3
        let rows = 3

        var dotRects = [CGRect]()

        let dots:[(CGFloat,CGFloat)] = [
            (0,0),(2,0),
            (0,1),(1,1),(2,1),
            (0,2),(2,2)
        ]

        let dotRectWidth:CGFloat = rect.width/3
        let dotRectHeight:CGFloat = rect.height/3

        for dot in dots {
            let xorigin = dot.0 * dotRectWidth
            let yorigin = dot.1 * dotRectHeight
            dotRects.append(CGRect(x: xorigin, y: yorigin, width: dotRectWidth, height: dotRectHeight))
        }

        return dotRects
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
