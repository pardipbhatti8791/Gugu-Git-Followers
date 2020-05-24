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
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGPAlertOnMainThread(title: "Something went Wrong", message: errorMessage!, buttonTitle: "Alright")
                return
            }
            print(followers.count)
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
    
    
}
