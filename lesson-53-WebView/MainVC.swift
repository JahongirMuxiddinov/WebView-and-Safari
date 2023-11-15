//
//  MainVC.swift
//  lesson-53-WebView
//
//  Created by JAHONGIR on 19/07/23.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var youtubeBtn: UIButton!
    
    @IBOutlet weak var safariBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(patternImage: UIImage(named: "picture")!)
    }


    @IBAction func youtubeBtbPressed(_ sender: Any) {
        let vc = WebView(nibName: "WebView", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    func openSafari() {
           guard let safariURL = URL(string: "https://www.google.com") else {
               // Handle the case where the URL is invalid
               return
           }
           
           if UIApplication.shared.canOpenURL(safariURL) {
               UIApplication.shared.open(safariURL, options: [:], completionHandler: nil)
           } else {
               // Handle the case where Safari is not available or cannot be opened
           }
       }
    
    
    @IBAction func safariBtnPressed(_ sender: Any) {
      openSafari()
    }
    
}
