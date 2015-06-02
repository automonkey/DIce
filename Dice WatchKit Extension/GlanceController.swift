//
//  GlanceController.swift
//  Dice WatchKit Extension
//
//  Created by Will Benyon on 02/06/2015.
//  Copyright (c) 2015 Will Benyon. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    @IBOutlet weak var testLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        testLabel.setText("WIPED - awake")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        testLabel.setText("WIPED - will activate")

        var timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector:  Selector("someSelector"), userInfo: nil, repeats: false)
    }

    func someSelector() {
        testLabel.setText("3000")
    }
}
