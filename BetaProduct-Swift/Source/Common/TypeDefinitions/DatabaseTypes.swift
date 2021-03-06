//
//  DatabaseTypes.swift
//  BetaProduct-Swift
//
//  Created by User on 11/7/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

enum SyncStatus : Int {
    case Synced = 1,
    Created,
    Updated,
    Deleted
}

enum Status : Int {
    case Active = 1,
    Inactive,
    Deleted
}
