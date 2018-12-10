//
//  WebView1Controller.swift
//  Swift4WebView1
//
//  Created by 米田大弥 on 2018/12/07.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class WebView1Controller: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        let url = URL(string: "https://www.mbga.jp/")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
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
