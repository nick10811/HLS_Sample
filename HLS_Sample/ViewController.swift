//
//  ViewController.swift
//  HLS_Sample
//
//  Created by Nick Yang on 2021/5/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup button
        let playButton = UIButton(type: .system)
        playButton.frame = CGRect(x: 50, y: 50, width: 100, height: 30)
        playButton.setTitle("Play", for: .normal)
        playButton.addTarget(self, action: #selector(clickButton(_:)), for: .touchUpInside)
        self.view.addSubview(playButton)
        
        // setup constraints HINT: AutoLayout should be after addSubview()
        playButton.translatesAutoresizingMaskIntoConstraints = false // AutoResize default is true for programmatically component
        let centerX = NSLayoutConstraint(item: playButton, attribute: .centerX,
                           relatedBy: .equal,
                           toItem: self.view, attribute: .centerX,
                           multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: playButton, attribute: .centerY,
                           relatedBy: .equal,
                           toItem: self.view, attribute: .centerY,
                           multiplier: 1, constant: 0)
        NSLayoutConstraint.activate([centerX, centerY])
        
    }

    @objc func clickButton(_ sender: UIButton) {
        // TODO: play HLS video
    }

}

