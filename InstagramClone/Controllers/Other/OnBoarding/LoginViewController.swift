//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Subash Sethuraman A on 14/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    struct Constants{
        static  let cornerRadius:CGFloat = 8.0
    }

    private let headerView : UIView = {
        let header = UIView()
        header.clipsToBounds = true
        header.backgroundColor = .brown
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gradient")
        header.addSubview(imageView)
        return header
    }()
    
    private let  userNameField : UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Username"
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        return field
    }()
    
    private let passwordField : UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Enter Password ..."
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        return field
    }()
    
    private let loginButton : UIButton = {
        let bt = UIButton()
        bt.setTitle("Login", for: .normal)
        bt.backgroundColor = .systemBlue
        bt.setTitleColor(.white, for: .normal)
        return bt
    }()
    
    private let createAccButton : UIButton = {
        let bt = UIButton()
        bt.setTitle("Register", for: .normal)
        return bt
    }()

    @objc private func loginBtnTapped(){}
    @objc private func RegisterBtnTapped(){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loginvc")
        addSubViews()
        headerView.frame = CGRect(x: 0,
                                  y: view.safeAreaInsets.top, width: view.width, height: view.height/3.5)
        
        configureHeaderView()
    }
    
    func configureHeaderView(){
        
        guard headerView.subviews.count == 1 else{
            return
        }
        
        guard let backgroundView = headerView.subviews.first else{
            return
        }
        
        backgroundView.frame = headerView.bounds
        
        // Add Instagram logo
        let imgView = UIImageView(image: UIImage(named: "text"))
        imgView.contentMode = .scaleAspectFit
        headerView.addSubview(imgView)
        imgView.frame = CGRect(x: headerView.width/4.0, y: view.safeAreaInsets.top, width: headerView.width/2.0, height: headerView.height - view.safeAreaInsets.top)
    }
    
    
    func addSubViews(){
        view.addSubview(headerView)
        view.addSubview(userNameField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(createAccButton)
        
    }
    

   

}
