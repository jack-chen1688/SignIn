//
//  ViewController.swift
//  SignIn
//
//  Created by Xuehua Chen on 11/20/16.
//  Copyright © 2016 Xuehua Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signOutPressed(_ sender: Any) {
        //GIDSignIn.sharedInstance().signOut()
        GIDSignIn.sharedInstance().disconnect()
    }

}

