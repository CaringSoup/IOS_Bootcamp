//
//  ViewController.swift
//  rush00
//
//  Created by Gabriel FERREIRA on 2019/10/13.
//  Copyright © 2019 Gabriel FERREIRA. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://api.intra.42.fr/oauth/authorize?client_id=e8c87f824b39babdd2bba077b2d05e0def445b558fd785ed03e97ee5e9597b55&redirect_uri=https%3A%2F%2Fsignin.intra.42.fr%2Fusers%2Fsign_in&response_type=code")
        let request = URLRequest(url: url!)
        webView.load(request)
        // Do any additional setup after loading the view.
    }
 

    @IBAction func back(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func forward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func stop(_ sender: Any) {
        webView.stopLoading()
    }
    
}

