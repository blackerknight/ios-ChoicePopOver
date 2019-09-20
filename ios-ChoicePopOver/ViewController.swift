//
//  ViewController.swift
//  ios-ChoicePopOver
//
//  Created by eduardo mancilla on 9/20/19.
//  Copyright © 2019 eduardo mancilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButton(_ sender: UIButton) {
        let items = ["Bob", "Alice", "Carol", "abc", "def", "ghi", "jkl", "mno"]
        let controller = ArrayChoiceTableViewController(items) { (name) in
            print("\(name) selected")
        }
        showPopup(controller, sourceView: sender, width: 100, height: 200)
    }

}

