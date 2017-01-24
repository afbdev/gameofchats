//
//  Message.swift
//  gameofchats
//
//  Created by afbdev on 1/20/17.
//  Copyright © 2017 afbdev. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
    
    var fromId: String?
    var text: String?
    var timestamp: NSNumber?
    var toId: String?
    
    
    func chatPartnerId() -> String? {
        
        return fromId == FIRAuth.auth()?.currentUser?.uid ? toId : fromId
        
        
    }
}
