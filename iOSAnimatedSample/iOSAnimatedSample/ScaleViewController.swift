//
//  ScaleViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    
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
        self.scaleAnimation()
    }
    
    func scaleAnimation() {
        UIView.animate(withDuration: 1, animations: {
            self.squareView.transform = CGAffineTransform.init(scaleX: 2, y: 2)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: 1, animations: {
                    self.squareView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
                }, completion: { (isFinished) in
                    if isFinished {
                        self.scaleAnimation()
                    }
                })
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
