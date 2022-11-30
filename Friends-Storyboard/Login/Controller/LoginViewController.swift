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
    
    @IBOutlet weak var errorMassgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorMassgeLabel.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        resetUI()
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        // perform Api client verification
        // if passed then move on to the home screen
        
        //i did not perform the check because i dont have the api yet
        // SO clicking to the login button goes directly to the homescreen
        
        if isValidInput(){
            performSegue(withIdentifier: "goToHome", sender: self)
        }
    }

}

// Test
extension LoginViewController {
    func isValidInput() -> Bool {
        
        guard let username = userNameTextField.text, let password = passwordTextField.text else{
            assertionFailure("Username/ password should never be nil")
            return false
        }
        
        if username.isEmpty || password.isEmpty {
            errorMassgeLabel.isHidden = false
            errorMassgeLabel.text =  "Username / password cannot be blank"
            return false
        }
        if username == "Kevin" && password == "Kevin1234" {
            return true
        } else {
            errorMassgeLabel.text =  "Username / password wrong"
            errorMassgeLabel.isHidden = false
            return false
        }
    }
}

// UI
extension LoginViewController{
    func resetUI(){
        errorMassgeLabel.isHidden = true
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
}
