//
//  CSNavTabBarController.swift
//  CSNavTabBarController-Demo
//
//  Created by iMacHCS on 15/11/11.
//  Copyright © 2015年 CS. All rights reserved.
//
import Foundation
import UIKit

class CSNavTabBarController: UIViewController {
    
    fileprivate let navTabBarHeight: CGFloat = 40.0  //bar默认高度
    
    fileprivate let containerScrollView = UIScrollView()    //容器scrollView
    let navTabBar = CSNavTabBar(frame: CGRect.zero)   //导航tabBar

    var viewControllersCount: Int? { return viewControllers?.count }    //子试图控制器数
    
    var viewControllers: [UIViewController]? {
        willSet {
            if viewControllers != nil {
                removeOldViewControllers()
            }
        }
        didSet {
            if viewControllers != nil {
                addNewViewControllers()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    override func viewWillLayoutSubviews() {
        refitUI()
    }
    fileprivate func configureUI() {
        refitUI()
        
        navTabBar.delegate = self
        containerScrollView.delegate = self
        containerScrollView.isPagingEnabled = true
        containerScrollView.showsHorizontalScrollIndicator = false
        
        self.view.addSubview(containerScrollView)
        self.view.addSubview(navTabBar) 
    }
    
    func abc() {
        print("tap")
    }
    
    //移除旧的子试图控制器
    fileprivate func removeOldViewControllers() {
        for vc in viewControllers! {
            vc.removeFromParentViewController()
            vc.view.removeFromSuperview()
        }
        
        containerScrollView.contentSize = CGSize.zero
        
        navTabBar.isHidden = true
        containerScrollView.isHidden = true
    }
    //添加新的子试图控制器
    fileprivate func addNewViewControllers() {
        navTabBar.isHidden = false
        containerScrollView.isHidden = false
        
        refitUI()
        containerScrollView.contentSize = CGSize(width: containerScrollView.width * CGFloat(viewControllersCount!), height: containerScrollView.height)
        var titles = [String]()
        for i in 0..<viewControllersCount! {
            let vc = viewControllers![i]
            if let title = vc.title {
                titles.append(title)
            } else {
                titles.append("item\(i)")
            }
            vc.view.frame = CGRect(x: CGFloat(i) * containerScrollView.width , y: 0, width: containerScrollView.width, height: containerScrollView.height)
            containerScrollView.addSubview(vc.view)
            self.addChildViewController(vc)
        }
        navTabBar.titles = titles
    }
    //重新配置UI
    fileprivate func refitUI() {
        if viewControllers != nil {
            navTabBar.frame = CGRect(x: 0.0, y: 0.0, width: self.view.width, height: navTabBarHeight)
            containerScrollView.frame = CGRect(x: 0, y: navTabBar.bottom, width: self.view.width, height: self.view.height - navTabBar.bottom)
            containerScrollView.contentSize = CGSize(width: containerScrollView.width * CGFloat(viewControllersCount!), height: containerScrollView.height)
        }
    }
}
// MARK: extension
extension CSNavTabBarController: CSNavTabBarDelegate {
    func navTabBar(_ navTabBar: CSNavTabBar, didSelectItemAtIndex index: Int) {
        if navTabBar == self.navTabBar {
            containerScrollView.contentOffset = CGPoint(x: containerScrollView.width * CGFloat(index), y: containerScrollView.contentOffset.y)
        }
    }
    func navTabBar(_ navTabBar: CSNavTabBar, didClickArrowButton: UIButton) {
        print("didClickArrowButton")
    }
}
extension CSNavTabBarController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        if scrollView == self.containerScrollView {
            //当前scrollView的偏移量
            let offSetX = scrollView.contentOffset.x
            
            //当scrollView未滚出边界才执行内部操作
            if offSetX >= 0 && offSetX <= (scrollView.contentSize.width - scrollView.width) {
                
                //余数（偏移量%宽度）
                let remainder = offSetX.truncatingRemainder(dividingBy: scrollView.width)
                //获取当前偏移量相对scrollView宽的倍数
                let mutiple = offSetX / scrollView.width
                
                if remainder == 0.0 {
                    navTabBar.selectedIndex = Int(mutiple)
                } else {
                    let leftIndex = Int(mutiple)
                    let rightIndex = leftIndex + 1
                    let rightScale = remainder / scrollView.width
                    let leftScale = 1.0 - rightScale
                    navTabBar.transitionForLeftIndex(leftIndex, rightIndex: rightIndex, leftScale: leftScale, rightScale: rightScale)
                }
            }
        }
    }
}






























