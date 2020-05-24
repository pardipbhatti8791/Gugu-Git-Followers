//
//  UIViewController+Ext.swift
//  Gugu GIt Followers
//
//  Created by Pardip Bhatti on 24/05/20.
//  Copyright © 2020 Pardip Bhatti. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentGPAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GPAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle  = .overFullScreen
            alertVC.modalTransitionStyle    = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
