//
//  CreatingViewObjectViewController.swift
//  UIView
//
//  Created by Seungjun Lim on 20/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class CreatingViewObjectViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        let v = UIView(frame: frame)
        v.backgroundColor = UIColor.blue
        
        view.addSubview(v)
    }
}
