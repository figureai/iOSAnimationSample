//
//  OpacityViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    lazy var squareView: UIView = {
        let squareView = UIView.init(frame: CGRect.init(x: 20, y: 120, width: 100, height: 100))
        squareView.backgroundColor = UIColor.red
        return squareView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(squareView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.opacityAnimation()
    }
    
    func opacityAnimation() {
        UIView.animate(withDuration: 1, animations: {
            self.squareView.alpha = 0
        }, completion: { (finished) in
            if finished {
                UIView.animate(withDuration: 1, animations: {
                    self.squareView.alpha = 1
                }, completion: { (isFinished) in
                    if isFinished {
                        self.opacityAnimation()
                    }
                })
            }
        })

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
