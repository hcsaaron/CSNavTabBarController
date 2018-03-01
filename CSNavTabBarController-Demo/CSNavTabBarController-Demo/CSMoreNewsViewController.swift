//
//  CSMoreNewsViewController.swift
//  CSNavTabBarController-Demo
//
//  Created by iMacHCS on 15/11/12.
//  Copyright © 2015年 CS. All rights reserved.
//

import UIKit

class CSMoreNewsViewController: CSNavTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "网易"

        let first = FirstViewController()
        first.title = "头条"
        first.view.backgroundColor = UIColor.red
        
        let second = SecondViewController()
        second.title = "热点"
        second.view.backgroundColor = UIColor.green
        
        let third = ThirdViewController()
        third.title = "深圳"
        third.view.backgroundColor = UIColor.yellow
        
        let fourth = UIViewController()
        fourth.title = "云课堂"
        fourth.view.backgroundColor = UIColor.blue
        
        let fifth = UIViewController()
        fifth.title = "图片"
        fifth.view.backgroundColor = UIColor.gray
        
        let sixth = UIViewController()
        sixth.title = "科技"
        sixth.view.backgroundColor = UIColor.purple
        
        let seventh = UIViewController()
        seventh.title = "轻松一刻"
        seventh.view.backgroundColor = UIColor.magenta
        
        let eighth = UIViewController()
        eighth.title = "汽车"
        eighth.view.backgroundColor = UIColor.orange
        
        let ninth = UIViewController()
        ninth.title = "房产"
        ninth.view.backgroundColor = UIColor.brown
        
        let tenth = UIViewController()
        tenth.title = "军事"
        tenth.view.backgroundColor = UIColor.cyan
        
        let eleven = UIViewController()
        eleven.title = "历史"
        eleven.view.backgroundColor = UIColor.green
        
        let twelve = UIViewController()
        twelve.title = "暴雪游戏"
        twelve.view.backgroundColor = UIColor.yellow
        
        let thirteen = UIViewController()
        thirteen.title = "漫画"
        thirteen.view.backgroundColor = UIColor.blue
        
        let fourteen = UIViewController()
        fourteen.title = "时尚"
        fourteen.view.backgroundColor = UIColor.gray
        
        let fifteen = UIViewController()
        fifteen.title = "亲子"
        fifteen.view.backgroundColor = UIColor.purple
        
        let sixteen = UIViewController()
        sixteen.title = "中国足球"
        sixteen.view.backgroundColor = UIColor.magenta
        
        let seventeen = UIViewController()
        seventeen.title = "值得买"
        seventeen.view.backgroundColor = UIColor.orange
        
        let eighteen = UIViewController()
        eighteen.title = "CBA"
        eighteen.view.backgroundColor = UIColor.brown
        
        let nineteen = UIViewController()
        nineteen.title = "彩票"
        nineteen.view.backgroundColor = UIColor.cyan
        
        self.viewControllers = [first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen]
    }
    
}














