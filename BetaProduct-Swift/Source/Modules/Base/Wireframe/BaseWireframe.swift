//
//  BaseWireframe.swift
//  BetaProduct-Swift
//
//  Created by User on 11/7/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
import UIKit

class BaseWireframe: NSObject {
    func mainStoryBoard() -> UIStoryboard {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        return storyBoard
    }
}
