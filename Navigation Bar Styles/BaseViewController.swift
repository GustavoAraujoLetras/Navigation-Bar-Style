//
//  LetrasBaseController.swift
//  Letras
//
//  Created by Elisa Pedrozo on 09/04/18.
//  Copyright © 2018 Studiosol. All rights reserved.
//
import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    let navBarBackgroundView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        navBarBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(navBarBackgroundView)
        view.bringSubview(toFront: navBarBackgroundView)
        
        NSLayoutConstraint.activate([
            navBarBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBarBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBarBackgroundView.topAnchor.constraint(equalTo: view.topAnchor)
            ])
        
        let anchorConstraint : NSLayoutYAxisAnchor = {
            if #available(iOS 11.0, *) { return view.safeAreaLayoutGuide.topAnchor }
            else { return topLayoutGuide.bottomAnchor }
        }()
        
        NSLayoutConstraint.activate([navBarBackgroundView.bottomAnchor.constraint(equalTo: anchorConstraint, constant: 0)])
        
    }
    
    
}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}
