//
//  NotesController.swift
//  Notes
//
//  Created by Tyler on 5/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class NotesController {

    private let kNotes = "storedEntries"

    static let sharedController = NotesController()

    var notes: [Note] = []

    init() {
        loadFromPersistentStorage()
    }
    
    func addNote(title: String) {
        let note = Note(title: title)
        notes.append(note)
        saveToPersistentStorage()
    }
    
    func removeNote(note: Note) {
        
}

    func saveToPersistentStorage() {
        NSUserDefaults.standardUserDefaults().setObject(notes.map{$0.dictionaryCopy}, forKey: kNotes)
        }

    func loadFromPersistentStorage() {
        guard let noteDictionaryArray = NSUserDefaults.standardUserDefaults().objectForKey(kNotes) as? [[String:AnyObject]] else { return
        }
        notes = noteDictionaryArray.flatMap{Note(dictionary: $0)}
        }
}

