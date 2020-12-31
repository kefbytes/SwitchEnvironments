//
//  Configuration.swift
//  SwitchingEnvironments
//
//  Created by Kent Franks on 8/16/18.
//  Copyright © 2018 Kent Franks. All rights reserved.
//

import Foundation

struct Configuration {
    
    lazy var environment: Environment = {
        let defaults = UserDefaults.standard
        if let env = defaults.object(forKey: "environment") as? String {
            switch env {
            case "Dev":
                return .Dev
            case "QA":
                return .QA
            case "AppStore":
                return .AppStore
            default:
                return .Dev
            }
        }
        return .Dev
    }()
    
}
