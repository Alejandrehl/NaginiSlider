//
//  AboutUsViewController.swift
//  NaginiSlide
//
//  Created by Alejandro Hernández Lara on 20-06-18.
//  Copyright © 2018 Alejandro Hernández Lara. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        if let url = Bundle.main.url(forResource: "NaginiSlide", withExtension: "html"){
//            
//            if let htmlData = try? Data(contentsOf: url){
//                
//                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//                self.webView.load(htmlData, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: baseURL)
//                
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToGame() {
        dismiss(animated: true, completion: nil)
    }
}
