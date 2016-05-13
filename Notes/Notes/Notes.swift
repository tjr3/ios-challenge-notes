//
//  Notes.swift
//  Notes
//
//  Created by Tyler on 5/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class Note: Equatable {

    private let kTitle = "title"
    private let kSubtitle = "bodyText"

    let title: String
    let subtitle: [Entry]

    var dictionaryCopy: [String:AnyObject] {
        return [kTitle: title, kSubtitle: subtitle.map{$0.dictionaryCopy}]
}

    init(title: String, subtitle: [Entry] = []) {
        
        self.title = title
        self.subtitle = subtitle
}

    init?(dictionary: [String:AnyObject]) {
        guard let title = dictionary[kTitle] as? String,
            entryArray = dictionary[kSubtitle] as? [[String:AnyObject]] else {
                return nil
        }
        self.title = title
        self.subtitle = entryArray.flatMap{Entry(dictionary: $0)}
        
    }
    
}

func ==(lhs: Note, rhs: Note) -> Bool {
return lhs.title == rhs.title && lhs.subtitle == rhs.subtitle
}