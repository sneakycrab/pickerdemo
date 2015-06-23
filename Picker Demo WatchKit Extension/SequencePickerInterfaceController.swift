//
//  SequencePickerInterfaceController.swift
//  Picker Demo WatchKit Extension
//
//  Copyright © 2015 Sneaky Crab. All rights reserved.
//

import WatchKit
import Foundation

class SequencePickerInterfaceController : WKInterfaceController {
    @IBOutlet var itemPicker: WKInterfacePicker!

    override func willActivate() {
        super.willActivate()

        let pickerItems: [WKPickerItem] = (0...100).map {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: "picker\($0).png")
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("Sequence Picker: \(value) selected.")
    }
}
