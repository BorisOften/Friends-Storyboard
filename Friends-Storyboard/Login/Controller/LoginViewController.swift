//
//  LoginViewController.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        // perform Api client verification
        // if passed then move on to the home screen
        
        //i did not perform the check because i dont have the api yet
        // SO clicking to the login button goes directly to the homescreen
        
        
        performSegue(withIdentifier: "goToHome", sender: self)
        
    }

}
