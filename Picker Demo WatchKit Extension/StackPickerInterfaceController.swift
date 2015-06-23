//
//  StackPickerInterfaceController.swift
//  Picker Demo WatchKit Extension
//
//  Copyright © 2015 Sneaky Crab. All rights reserved.
//

import WatchKit
import Foundation

class StackPickerInterfaceController : WKInterfaceController {
    @IBOutlet var itemPicker: WKInterfacePicker!

    var items: [String]! = nil
    
    override func willActivate() {
        super.willActivate()

        items = (1...5).map { "frame\($0).png" }
        
        let pickerItems: [WKPickerItem] = items.map {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: $0)
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        itemPicker.focusForCrownInput()
    }

    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("Stack Picker: \(items[value]) selected.")
    }
}
