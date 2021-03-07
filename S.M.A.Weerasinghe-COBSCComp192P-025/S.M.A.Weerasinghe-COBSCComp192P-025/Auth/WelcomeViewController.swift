//
//  WelcomeViewController.swift
//  S.M.A.Weerasinghe-COBSCComp192P-025
//
//  Created by Lionel Rajapakse on 2021-03-07.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var signin_Button: NSLayoutConstraint!
    @IBOutlet weak var signup_Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signin_Tapped(_ sender: Any) {
        self.performSegue(withIdentifier: "signinsegue", sender: nil)
    }
    
    @IBAction func signup_Tapped(_ sender: Any) {
        self.performSegue(withIdentifier: "signupsegue", sender: nil)
    }
    
}
