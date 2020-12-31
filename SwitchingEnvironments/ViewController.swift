//
//  ViewController.swift
//  SwitchingEnvironments
//
//  Created by Kent Franks on 8/16/18.
//  Copyright © 2018 Kent Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var environmentLabel: UILabel!
    var config = Configuration()

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        if let env = defaults.object(forKey: "environment") as? String {
            environmentLabel.text = env
        }
        NotificationCenter.default.addObserver(self,  selector: #selector(environmentChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        config = Configuration()
        environmentLabel.text = config.environment.urlLogin
    }
    
    @objc func environmentChanged() {
        config = Configuration()
        environmentLabel.text = config.environment.urlLogin
    }
    
}

