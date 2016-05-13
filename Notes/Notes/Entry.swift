//
//  Entry.swift
//  Notes
//
//  Created by Tyler on 5/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class Entry: Equatable {

    private let kTitle = "title"
    private let kBodyText = "bodyText"
    private let kTimeStamp = "timeStamp"
    
    
    let title: String
    let bodyText: String
    var timeStamp = NSDate()
    
    // Entry to Dictionary
    var dictionaryCopy: [String:AnyObject] {
        return [kTitle: title, kBodyText: bodyText, kTimeStamp: timeStamp]
    }

    init(title: String, bodyText: String) {
        self.title = title
        self.bodyText = bodyText
}
    init?(dictionary: [String:AnyObject]) {
        guard let title = dictionary[kTitle] as? String,
         bodyText = dictionary[kBodyText] as? String,
         timeStamp = dictionary[kTimeStamp] as? NSDate else { return nil }
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = timeStamp
    }
}
func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.title == rhs.title && lhs.bodyText == rhs.bodyText && lhs.timeStamp == rhs.timeStamp
}