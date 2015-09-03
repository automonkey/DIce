import UIKit

class DieView : UIView {

    private var dotModel = [
        [true, false, false],
        [false, true, false],
        [false, false, true]
    ]

    func updateViewModel(viewModel:[[Bool]]) {
        dotModel = viewModel
        setNeedsDisplay()
    }

    override func drawRect(rect: CGRect) {
        let dieFaceWidth = min(bounds.width, bounds.height)

        let dieFaceRect = CGRectInset(bounds, (bounds.width - dieFaceWidth)/2, (bounds.height - dieFaceWidth)/2)

        drawOutline(dieFaceRect)
        drawDots(dieFaceRect.rectByInsetting(dx: 5.0, dy: 5.0))
    }

    private func drawOutline(dieFaceRect:CGRect) {
        let dieFaceRoundedRect = UIBezierPath(roundedRect: dieFaceRect, cornerRadius: 30)
        dieFaceRoundedRect.stroke()
    }

    private func drawDots(faceRect:CGRect) {

        let spotPadding:CGFloat = 10.0

        let dotRectWidth:CGFloat = (faceRect.width - (4 * spotPadding))/3

        for row in 0...2 {
            for col in 0...2 {
                if dotModel[row][col] {
                    let xorigin = faceRect.origin.x + (CGFloat(col) * dotRectWidth) + (CGFloat(col + 1) * spotPadding)
                    let yorigin = faceRect.origin.y + (CGFloat(row) * dotRectWidth) + (CGFloat(row + 1) * spotPadding)
                    drawDot(CGRect(x: xorigin, y: yorigin, width: dotRectWidth, height: dotRectWidth))
                }
            }
        }
    }

    private func drawDot(dotRect:CGRect) {
        let lineWidth:CGFloat = 2.0;
        let borderRect = CGRectInset(dotRect, lineWidth * 0.5, lineWidth * 0.5)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, lineWidth)
        CGContextFillEllipseInRect (context, borderRect)
        CGContextStrokeEllipseInRect(context, borderRect)
    }
}
