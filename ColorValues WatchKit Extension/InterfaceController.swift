//
//  InterfaceController.swift
//  ColorValues WatchKit Extension
//
//  Created by Bruce Milyko on 4/17/15.
//  Copyright (c) 2015 Bruce Milyko. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var redLabel: WKInterfaceLabel!
    @IBOutlet weak var blueLabel: WKInterfaceLabel!
    @IBOutlet weak var greenLabel: WKInterfaceLabel!
    @IBOutlet weak var group: WKInterfaceGroup!
    
    var redValue = CGFloat(0.5)
    var blueValue = CGFloat(0.5)
    var greenValue = CGFloat(0.5)
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func redSliderAdjusted(value: Float) {
        redValue = CGFloat(value)
        self.redLabel.setText("Red value : \(value)")
        updateGroup()
    }
    
    @IBAction func blueSliderAdjusted(value: Float) {
        blueValue = CGFloat(value)
        self.blueLabel.setText("Blue value : \(value)")
        updateGroup()
    }
    
    @IBAction func greenSliderAdjusted(value: Float) {
        greenValue = CGFloat(value)
        self.greenLabel.setText("Green value : \(value)")
        updateGroup()
    }
    
    func updateGroup() {
        self.group.setBackgroundColor(UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0))
        if redValue + blueValue + greenValue > 1.5 {
            redLabel.setTextColor(UIColor.blackColor())
            blueLabel.setTextColor(UIColor.blackColor())
            greenLabel.setTextColor(UIColor.blackColor())
        } else {
            redLabel.setTextColor(UIColor.whiteColor())
            blueLabel.setTextColor(UIColor.whiteColor())
            greenLabel.setTextColor(UIColor.whiteColor())
        }
    }

}
