//
//  LoginOrSignupView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 07/07/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
 
    let webView: WKWebView
    var link : String
    init(link:String) {
        webView = WKWebView(frame: .zero)
        self.link = link
      
    }
    
    func makeUIView(context: Context) -> WKWebView {
        
        webView.configuration.websiteDataStore = WKWebsiteDataStore.default()
            // Ensure cookies are accepted
            webView.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        webView.load(URLRequest(url: URL(string: link)!))
        
        
        
        
    }
}
