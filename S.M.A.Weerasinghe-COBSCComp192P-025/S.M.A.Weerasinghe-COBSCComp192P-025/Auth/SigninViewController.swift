//
//  SigninViewController.swift
//  S.M.A.Weerasinghe-COBSCComp192P-025
//
//  Created by Lionel Rajapakse on 2021-03-07.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinpage_Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signpage_Tapped(_ sender: Any) {
        self.performSegue(withIdentifier: "userSigninSegue", sender: nil)
    }
    

}
