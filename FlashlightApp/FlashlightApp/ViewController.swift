//
//  ViewController.swift
//  FlashlightApp
//
//  Created by C4Q  on 10/17/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: UIButton) {
        //If changing the view's background
        /*
         switch self.view.backgroundColor == .white {
         case true:
             self.view.backgroundColor = .black
         case false:
             self.view.backgroundColor = .white
         }
         */
        switch sender.backgroundColor == .white {
        case true:
            sender.backgroundColor = .black
        case false:
            sender.backgroundColor = .white
        }
    }
}

