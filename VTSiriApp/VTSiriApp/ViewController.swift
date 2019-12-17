//
//  ViewController.swift
//  VTSiriApp
//
//  Created by admin on 17/12/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import IntentsUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupIntentsForSiri()
    }

    func setupIntentsForSiri() {
        let actionIdentifier = "vineet.weboniselab.VTSiriApp.showAppPopup"
        let activity = NSUserActivity(activityType: actionIdentifier)
        activity.title = "Open VT Siri"
        activity.userInfo = ["speech" : "open vt siri"]
        activity.isEligibleForSearch = true
        if #available(iOS 12.0, *) {
           activity.isEligibleForPrediction = true
           activity.persistentIdentifier = NSUserActivityPersistentIdentifier(actionIdentifier)
        }
        view.userActivity = activity
        activity.becomeCurrent()
    }
    
    public func respondToSiri() {
        let alert = UIAlertController(title: "Congratulations!", message: "Hey there! Glad to see you got Siri working!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

