//
//  Constants.swift
//  FlashChat
//
//  Created by Evgenii Mazrukho on 21.09.2023.
//

import Foundation

struct K {
    static let appName = "⚡️FlashChat"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let cellIdentifier = "ReusableCell"
    static let  cellNibName = "MessageCell"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lightBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
