//
//  ContentModeViewController.swift
//  UIView
//
//  Created by Seungjun Lim on 20/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ContentModeViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var modeLabel: UILabel!
    
    @IBAction func switchMode(_ sender: UIButton) {
        let currentMode = imageview.contentMode.rawValue
        let newMode = UIView.ContentMode(rawValue: currentMode + 1) ?? UIView.ContentMode.scaleAspectFill
        imageview.contentMode = newMode
        updateModeLabel()
    }
    
    func updateModeLabel() {
        switch imageview.contentMode {
        case .scaleToFill:
            modeLabel.text = "Scale to fill"
        case .scaleAspectFit:
            modeLabel.text = "Aspect fit"
        case .redraw:
            modeLabel.text = "Redraw"
        case .center:
            modeLabel.text = "Center"
        case .top:
            modeLabel.text = "Top"
        case .bottom:
            modeLabel.text = "Bottom"
        case .left:
            modeLabel.text = "Left"
        case .right:
            modeLabel.text = "Right"
        case .topLeft:
            modeLabel.text = "Top left"
        case .topRight:
            modeLabel.text = "Top right"
        case .bottomLeft:
            modeLabel.text = "Bottom left"
        case .bottomRight:
            modeLabel.text = "Bottom right"
        case .scaleAspectFill:
            modeLabel.text = "Aspect fill"
//        @unknown default:
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview.layer.borderColor = UIColor.blue.cgColor
        imageview.layer.borderWidth = 2
        
        updateModeLabel()
    }
    
    
}
