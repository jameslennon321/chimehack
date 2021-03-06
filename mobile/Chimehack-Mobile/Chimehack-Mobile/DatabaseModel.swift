//
//  DatabaseModel.swift
//  Chimehack-Mobile
//
//  Created by James Lennon on 6/11/17.
//  Copyright © 2017 James Lennon. All rights reserved.
//

import RealmSwift

class DatabaseModel {
    
    static let sharedInstance = DatabaseModel()
    
    public func viewedWords() -> [ViewedWord] {
        
        var list = [ViewedWord]()
        
        for word in ["Food", "People", "Tent"] { //"Apple", "Road", "House"] {
            let vw = ViewedWord()
            vw.word = word
            vw.viewCount = 1
            list.append(vw)
        }
        
        return list
        
//        let rlm = try! Realm()
//        
//        return Array(rlm.objects(ViewedWord.self))
    }
    
    public func addWord(word: String) {
        
        DispatchQueue.main.async {
            let rlm = try! Realm()
            
            let existing = rlm.objects(ViewedWord.self).filter("word = %@", word)
            
            print(existing)
            
            if let already = existing.first {
                try! rlm.write {
                    already.viewCount += 1
                    rlm.add(already)
                }
            } else {
                try! rlm.write {
                    let wordObject = ViewedWord()
                    wordObject.word = word
                    wordObject.viewCount = 1
                    rlm.add(wordObject)
                }
            }
        }
        
//        try! rlm.commitWrite()
        
    }
    
}
