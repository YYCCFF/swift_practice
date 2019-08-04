//
//  ViewController.swift
//  SwiftWKWebView
//
//  Created by 近沢勇輝 on 2019/08/02.
//  Copyright © 2019 Yuki Chikazawa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    var urlString:String = "https://www.youtube.com/watch?v=_me2yfR7Jfk"
    var indicator:UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string:urlString) else {
            return
        }
        let req = URLRequest(url: url,cachePolicy: .returnCacheDataElseLoad,timeoutInterval: 100)
        self.webView.load(req)
    }
    
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func next(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    
    func setIndicator(){
        //インディケーターの初期化
        indicator = UIActivityIndicatorView()
        
        //サイズ決定
        indicator.frame = CGRect(x:0,y:0,width:100,height:100)
        indicator.center = CGPoint(x:UIScreen.main.bounds.size.width/2,y:UIScreen.main.bounds.size.height/2)
        indicator.hidesWhenStopped = true
        indicator.style = .gray
        //webViewにaddSubView
        self.webView.addSubview(indicator)
    }
    
    //通信が開始されたタイミングで呼ばれる
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
        //インディケーターを回す
        indicator.startAnimating()
    }
    
    //通信が完了した段階で呼ばれる
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        indicator.stopAnimating()
    }
}

