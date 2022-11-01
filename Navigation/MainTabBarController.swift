//
//  TabBarController.swift
//  Navigation
//
//  Created by Татьяна Новичихина on 31.10.2022.
//

import UIKit

import UIKit

class TabBarController: UITabBarController() {

    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    let postVC = PostViewController()
    var post = Post(title: "Здесь будет пост")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
   
    private func setupControllers() {
        let feedNavController = UINavigationController(rootViewController: feedVC)
        let profileNavController = UINavigationController(rootViewController: profileVC)
        
        feedVC.tabBarItem.title = "Feed"
        feedVC.tabBarItem.image = UIImage(systemName: "house.fill")
        feedVC.navigationItem.title = "Feed"
        
        profileVC.tabBarItem.title = "Profile"
        profileVC.tabBarItem.image = UIImage(systemName: "person.fill")
        profileVC.navigationItem.title = "Profile"
        
        
        viewControllers = [feedNavController, profileNavController]
    }
    
}
