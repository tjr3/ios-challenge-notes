//
//  EntryController.swift
//  Notes
//
//  Created by Tyler on 5/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {

static let sharedController = EntryController()

    var entriesArray: [Entry] = []

    func addEntry(entry: Entry) {
        entriesArray.append(entry)
}

    func deleteEntry(entry: Entry) {
        if let index = entriesArray.indexOf(entry) {
            entriesArray.removeAtIndex(index)
        }
}
}