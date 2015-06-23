//
//  ListPickerInterfaceController.swift
//  Picker Demo WatchKit Extension
//
//  Copyright © 2015 Sneaky Crab. All rights reserved.
//

import WatchKit
import Foundation

class ListPickerInterfaceController: WKInterfaceController {
    @IBOutlet var itemPicker: WKInterfacePicker!

    var foodList: [(String, String)] = [
        ("Broccoli", "Gross"),
        ("Brussel Sprouts", "Gross"),
        ("Soup", "Delicious"),
        ("Steak", "Delicious"),
        ("Ramen", "Delicious"),
        ("Pizza", "Delicious") ]

    override func willActivate() {
        super.willActivate()

        let pickerItems: [WKPickerItem] = foodList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
    }

    @IBAction func pickerSelectedItemChanged(value: Int) {
        NSLog("List Picker: \(foodList[value].0) selected")
    }
}
