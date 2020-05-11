//
//  File.swift
//  Flash Chat iOS13
//
//  Created by Abhas Kumar on 5/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class AlertManagerForChat {
    
    func alertGenerator(_ title: String, _ message: String, _ error: Error) {
        let alert = UIAlertController(title: title, message: "\(message) \n \(error.localizedDescription)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: .none))
    }
    
}
