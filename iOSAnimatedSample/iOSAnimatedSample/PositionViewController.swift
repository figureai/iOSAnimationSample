//
//  PositionViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    lazy var squareView: UIView = {
        let squareView = UIView.init(frame: CGRect.init(x: 20, y: 120, width: 100, height: 100))
        squareView.backgroundColor = UIColor.red
        return squareView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        view.addSubview(squareView)
        
//        let positionBtn = UIButton.init(type: .custom)
//        positionBtn.setTitle("平移", for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        positionAnimation()
    }
    
    func positionAnimation() {
        UIView.animate(withDuration: 1, animations: {
            self.squareView.center.x = self.view.frame.size.width - 100
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: 1, animations: {
                    self.squareView.center.x = 70
                }, completion: { (originalFinished) in
                    if originalFinished {
                        self.positionAnimation()
                    }
                })
            }
        }
        //
        //        UIView.animate(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, options: <#T##UIViewAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        //        //
        //        UIView.animate(withDuration: <#T##TimeInterval#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        //        //
        //        UIView.animate(withDuration: <#T##TimeInterval#>, animations: <#T##() -> Void#>)
        //        //
        //        UIView.animateKeyframes(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, options: <#T##UIViewKeyframeAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        //        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
