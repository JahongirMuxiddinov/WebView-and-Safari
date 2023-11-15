//
//  WebView.swift
//  lesson-53-WebView
//
//  Created by JAHONGIR on 19/07/23.
//

import UIKit
import WebKit

class WebView: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupView()
    }

    func setupView() {
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        if let url = URL(string: "https://www.youtube.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
    }

}
extension WebView: WKNavigationDelegate {
    
}
