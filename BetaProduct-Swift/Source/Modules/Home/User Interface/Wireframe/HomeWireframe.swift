//
//  HomeWireframe.swift
//  BetaProduct-Swift
//
//  Created by User on 11/7/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
import UIKit

let homeViewIdentifier = "HomeView"

class HomeWireframe: BaseWireframe {
    var homeView : HomeView?
    var rootWireFrame : RootWireframe?
    
    func presentHomeViewInterfaceFromWindow(Window window : UIWindow) {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: homeViewIdentifier) as! HomeView
        homeView = viewcontroller
        assembleViewControllersForHomeView()
        rootWireFrame?.showRootViewController(rootViewController: viewcontroller, inWindow: window)
    }
    
    func assembleViewControllersForHomeView() {
        let qrView = UIViewController.init()
        let productListView = UIViewController.init()
        let shopCartView = UIViewController.init()
        let settingsView = UIViewController.init()
        
        qrView.view.backgroundColor = UIColor.red;
        productListView.view.backgroundColor = UIColor.yellow;
        shopCartView.view.backgroundColor = UIColor.blue;
        settingsView.view.backgroundColor = UIColor.green;
        
        let tabViewControllers = [qrView, productListView, shopCartView, settingsView]
        homeView?.setViewControllers(tabViewControllers, animated: true)
        
        qrView.tabBarItem = UITabBarItem.init(title: "QR Code Scanner", image: UIImage.init(imageLiteralResourceName: "qr"), tag: 1)
        productListView.tabBarItem = UITabBarItem.init(title: "Products", image: UIImage.init(imageLiteralResourceName: "products"), tag: 1)
        shopCartView.tabBarItem = UITabBarItem.init(title: "Shop Cart", image: UIImage.init(imageLiteralResourceName: "shopcart"), tag: 1)
        settingsView.tabBarItem = UITabBarItem.init(title: "Settings", image: UIImage.init(imageLiteralResourceName: "settings"), tag: 1)
    }
}
