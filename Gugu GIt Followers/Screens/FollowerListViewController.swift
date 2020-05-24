//
//  FollowerListViewController.swift
//  Gugu GIt Followers
//
//  Created by Pardip Bhatti on 24/05/20.
//  Copyright © 2020 Pardip Bhatti. All rights reserved.
//

import UIKit

class FollowerListViewController: UIViewController {

    var username: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
    }
}
