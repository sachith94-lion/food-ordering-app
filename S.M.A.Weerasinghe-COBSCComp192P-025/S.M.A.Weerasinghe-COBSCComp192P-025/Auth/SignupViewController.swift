//
//  SignupViewController.swift
//  S.M.A.Weerasinghe-COBSCComp192P-025
//
//  Created by Lionel Rajapakse on 2021-03-07.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var mobileField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signuppage_Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func signuppage_Tapped(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.createUser(withEmail: emailField.text!, password: passwordField.text!) { (authResult, error) in
            if error != nil {
                self.present(Service.createAlertController(title: "Error", message: error!.localizedDescription), animated: true, completion: nil)
                return
            }
            self.performSegue(withIdentifier: "userSignupSegue", sender: nil)
        }
        
    }
    
}
