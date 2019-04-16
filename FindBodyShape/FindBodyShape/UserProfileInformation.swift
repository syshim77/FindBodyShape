//
//  UserProfileInformation.swift
//  FindBodyShape
//
//  Created by sooyeon Shim on 09/04/2019.
//  Copyright © 2019 sooyeon Shim. All rights reserved.
//

import UIKit

class UserProfileInformation {
    static let sharedInstance = UserProfileInformation()
    
    var name: String? 
    var height: String?
    var weight: String?
    var goalWeight: String?
    var gender: Int?
    
    private init() { }
}
