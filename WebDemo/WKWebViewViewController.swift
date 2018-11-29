//
//  WKWebViewViewController.swift
//  WebDemo
//
//  Created by Lubos Ilcik on 28/11/2018.
//  Copyright © 2018 Touch4IT. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewViewController: UIViewController {

    private var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "https://developer.apple.com")!)
        webView.load(request)
    }
    
}
