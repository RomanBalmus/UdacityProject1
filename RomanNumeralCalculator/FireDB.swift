//
//  FireDB.swift
//  RomanNumeralCalculator
//
//  Created by iOS on 05/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FireDB {
    
    
    let ref = FIRDatabaseReference
    
    
    static let sharedInstance: FireDB = {
        let instance = FireDB()
        // setup code
        
        
        return instance
    }()
}
