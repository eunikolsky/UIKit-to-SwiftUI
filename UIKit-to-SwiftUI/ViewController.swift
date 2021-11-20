//
//  ViewController.swift
//  UIKit-to-SwiftUI
//
//  Created by u on 15.11.21.
//

import UIKit

class ViewController: UIViewController {
    private var counterController: CounterHostingController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "counterSegue": counterController = segue.destination as? CounterHostingController;
        default: break;
        }
    }

    @IBAction func didPressIncreaseButton(_ sender: UIButton) {
    }
}

