//
//  ColorViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

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
        colorAnimation()
    }
    
    func colorAnimation() {
        UIView.animate(withDuration: 1.5, animations: {
            self.squareView.backgroundColor = UIColor.blue
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: 1.5, animations: {
                    self.squareView.backgroundColor = UIColor.red
                }, completion: { (isFinished) in
                    if isFinished {
                        self.colorAnimation()
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
