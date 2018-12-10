//
//  ViewController.swift
//  iOSAnimatedSample
//
//  Created by sun like on 2018/12/9.
//  Copyright © 2018 sun like. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var tableView: UITableView = {
        let temp = UITableView.init()
        temp.dataSource = self
        temp.delegate = self
        return temp
    }()
    
    lazy var animationTypes: [[String: Any]] = {
        let temp = [
                        ["name": "Position", "target": PositionViewController()],
                        ["name": "Opacity", "target": OpacityViewController()],
                        ["name": "Scale", "target": ScaleViewController()],
                        ["name": "Color", "target": ColorViewController()],
                        ["name": "Rotation", "target": RotationViewController()],
                    ]
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.frame = view.frame
        view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "animationTypeCellID")
        cell.textLabel?.text = animationTypes[indexPath.row]["name"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(animationTypes[indexPath.row]["target"] as! UIViewController, animated: true)
    }
}






