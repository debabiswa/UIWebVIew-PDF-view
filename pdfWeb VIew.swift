//UIWebView With Activity Indicator:
//
//  pdfViewerViewController.swift
//  songPlaye
//
//  Created by Debabiswa Panda on 15/05/19.
//  Copyright © 2019 Debabiswa Panda. All rights reserved.
//

import UIKit
import PDFKit
class pdfViewerViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url: URL! = URL(string: "https://www.antennahouse.com/XSLsample/pdf/sample-link_1.pdf")
        webView.loadRequest(URLRequest(url: url))


        
//        let Rurl = NSURL(string: "https://www.geeksforgeeks.org/")
//        let request = NSURLRequest(url: Rurl as! URL)
//        webView.loadRequest(request as URLRequest)
    }
        
    func webViewDidStartLoad(_:UIWebView)
    {
        activityIndicator.startAnimating()
        NSLog("Web view started loading")
    }
   func webViewDidFinished(_: UIWebView)
    {
        activityIndicator.stopAnimating()
        activityIndicator.alpha = 0
        NSLog("Web View Stopped Loading")
        
    }
    
    
    

//        ############################
        
//        let pdfView = PDFView(frame: UIScreen.main.bounds)
//        //        pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        //        pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        //        pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        //        pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        let url = Bundle.main.url(forResource: "sample", withExtension: "pdf")!
//        pdfView.document = PDFDocument(url: url)
//        self.view.addSubview(pdfView)
//        ######################
        
        
        
        
        
        // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
