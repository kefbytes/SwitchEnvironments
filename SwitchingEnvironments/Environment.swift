//
//  Environment.swift
//  SwitchingEnvironments
//
//  Created by Kent Franks on 8/16/18.
//  Copyright © 2018 Kent Franks. All rights reserved.
//

import Foundation

enum Environment: String {
    
    case Dev = "devInt"
    case QA = "qa"
    case AppStore = "AppStore"
    
    var env: String {
        switch self {
        case .Dev: return "DevInt"
        case .QA: return "QA"
        case .AppStore: return "Production"
        }
    }
    
    var urlLogin: String {
        switch self {
        case .Dev: return "https://www.apple.com"
        case .QA: return "https://www.google.com"
        case .AppStore: return "https://www.stackoverflow.com"
        }
    }
    
}
