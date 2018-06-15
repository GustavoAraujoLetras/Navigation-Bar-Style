//
//  SecondViewController.swift
//  Navigation Bar Styles
//
//  Created by Gustavo Araújo on 14/06/2018.
//  Copyright © 2018 Gustavo Araújo. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {
    
    // Changes the style of StatusBar in this particular ViewController
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second screen"
    }
    
}
