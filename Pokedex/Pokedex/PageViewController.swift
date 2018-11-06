//
//  PageViewController.swift
//  Pokedex
//
//  Created by Luis Martin de Vidales Palomero on 02/11/2018.
//  Copyright © 2018 UPM. All rights reserved.
//
import WebKit
import UIKit

class PageViewController: UIViewController {

    var raza : Race?
    
    @IBOutlet weak var pagRaza: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = raza?.name ?? "NONONO"
        UIApplication.shared.isNetworkActivityIndicatorVisible=true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let base:String = "http://es.pokemon.wikia.com"
        let path:String = "wiki/" + (raza?.name)!
        if let escapedPath = path.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed){
            
            let escapedURL = "\(base)/\(escapedPath)"
            let url = URL(string: escapedURL)
            let urlDestino = URLRequest(url: url!)
            pagRaza.load(urlDestino)
        }
        UIApplication.shared.isNetworkActivityIndicatorVisible=false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
