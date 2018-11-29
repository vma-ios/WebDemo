//
//  ViewController.swift
//  WebDemo
//
//  Created by Lubos Ilcik on 28/11/2018.
//  Copyright © 2018 Touch4IT. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    private let url = URL(string: "https://developer.apple.com")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openSafari(_ sender: Any) {
        UIApplication.shared.open(url)
    }
    
    @IBAction func openSafariViewController(_ sender: Any) {
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = true
        let vc = SFSafariViewController(url: url, configuration: config)
        present(vc, animated: true)
    }
    
}

