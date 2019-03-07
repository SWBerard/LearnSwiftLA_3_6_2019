//
//  ViewController.swift
//  IndoorGoat
//
//  Created by Steven Berard on 3/6/19.
//  Copyright © 2019 Event Farm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainInputAccessoryView = MainInputAccessoryViewController().view as? MainInputAccessoryView

    override var inputAccessoryView: UIView? {
        return mainInputAccessoryView
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        mainInputAccessoryView?.delegate = self

        // Do any additional setup after loading the view, typically from a nib.

//        let inputAccessoryView = UIView()
//        inputAccessoryView.backgroundColor = .blue
//        inputAccessoryView.frame = CGRect(x: 0, y: 0, width: 0, height: 64)
        let inputAccessoryView = MainInputAccessoryViewController().view as? MainInputAccessoryView
        inputAccessoryView?.delegate = self
        textField.inputAccessoryView = inputAccessoryView
    }
}

extension ViewController: MainInputAccessoryViewDelegate {
    func userTypedSomething(text: String) {
        print("User typed: \(text)")
    }

    func userTappedOnButton() {
        print("Great! Now I can do something!")

        if view.backgroundColor == .white {
            view.backgroundColor = .blue
        }
        else {
            view.backgroundColor = .white
        }
    }
}

