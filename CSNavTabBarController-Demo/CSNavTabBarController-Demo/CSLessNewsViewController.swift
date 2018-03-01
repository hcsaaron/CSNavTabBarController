//
//  CSLessNewsViewController.swift
//  CSNavTabBarController-Demo
//
//  Created by iMacHCS on 15/11/12.
//  Copyright © 2015年 CS. All rights reserved.
//

import UIKit

class CSLessNewsViewController: CSNavTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "自定义样式的CSNavTabBar"
        
        let first = FirstViewController()
        first.title = "头条"
        first.view.backgroundColor = UIColor.red
        
        let second = SecondViewController()
        second.title = "热点"
        second.view.backgroundColor = UIColor.green
        
        let third = ThirdViewController()
        third.title = "深圳"
        third.view.backgroundColor = UIColor.yellow
        
        self.viewControllers = [first, second, third]
        
        self.navTabBar.backgroundColor = UIColor.red
//        self.navTabBar.hasArrow = false
        self.navTabBar.font = UIFont.systemFont(ofSize: 12.0)
        self.navTabBar.titleScale = 1.5
        self.navTabBar.normalTitleColor = CSRGBColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navTabBar.selectedTitleColor = CSRGBColor(red: 48.0/255.0, green: 181.0/255.0, blue: 285.0/255.0, alpha: 1)
        self.navTabBar.leftFeatherImageView.image = nil
        self.navTabBar.rightFeatherImageView.image = nil
        self.navTabBar.decentWhenLess = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
