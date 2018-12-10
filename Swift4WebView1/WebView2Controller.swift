//
//  WebView2Controller.swift
//  Swift4WebView1
//
//  Created by 米田大弥 on 2018/12/07.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class WebView2Controller: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var WebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        WebView.delegate = self
        let url = URL(string: "https://www.google.com")
        let urlRequest = URLRequest(url: url!)
        WebView.loadRequest(urlRequest)
        
    }
    

    func webViewDidStartLoad(_ webView: UIWebView) {
        
        // インディケーター開始
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        // インディケーター開始
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

}
