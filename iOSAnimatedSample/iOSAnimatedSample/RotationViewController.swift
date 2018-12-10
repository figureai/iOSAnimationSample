//
//  RotationViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    lazy var squareView: UIView = {
        let squareView = UIView.init(frame: CGRect.init(x: 20, y: 120, width: 100, height: 100))
        squareView.center = view.center
        squareView.backgroundColor = UIColor.red
        return squareView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(squareView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        rotationAnimation()
    }
    
    func rotationAnimation() {
                
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            let originalAngle = CGAffineTransform.rotated(self.squareView.transform)
            self.squareView.transform = originalAngle(CGFloat(Double.pi))
        }) { (finished) in
            if finished {
                self.rotationAnimation()
            }
        }
    }
}
