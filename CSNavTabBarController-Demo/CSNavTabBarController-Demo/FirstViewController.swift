//
//  FirstViewController.swift
//  CSNavTabBarController-Demo
//
//  Created by iMacHCS on 15/11/11.
//  Copyright © 2015年 CS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.width, height: self.view.height), style: UITableViewStyle.plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        
        let tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.width, height: 280))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: tableView.width, height: 200))
        imageView.image = UIImage(named: "newsPicture.jpg")
        
        let label = UILabel(frame: CGRect(x: 0, y: imageView.bottom, width: imageView.width, height: 80))
        label.backgroundColor = UIColor.lightGray
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.text = "简单版-不包含下拉菜单及其各种功能 简单易用\n敬请关注升级版、同步推出\n只需继承CSNavTabBarController，并设置viewControllers即可使用\n作者：黄楚升（转载请注明来源）"
        
        tableHeaderView.addSubview(imageView)
        tableHeaderView.addSubview(label)
        
        tableView.tableHeaderView = tableHeaderView
    }
    override func viewWillLayoutSubviews() {
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.width, height: self.view.height)
    }
}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = "第\((indexPath as NSIndexPath).row)行"
        
        return cell
    }
}
