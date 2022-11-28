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
        
        performSegue(withIdentifier: "goToHome", sender: self)
        
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
