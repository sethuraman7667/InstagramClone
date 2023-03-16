//
//  ViewController.swift
//  InstagramClone
//
//  Created by Subash Sethuraman A on 14/03/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var login : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        handleNotAuthenticated()
    }

    func handleNotAuthenticated(){
        
        if login == true{
            
        }else{
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
}

