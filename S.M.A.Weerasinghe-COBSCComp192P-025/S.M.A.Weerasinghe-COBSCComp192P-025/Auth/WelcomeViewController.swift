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

        let defaults = UserDefaults.standard
        
        if defaults.bool(forKey: "isUserSignedIn"){
            let viewController = self.storyboard?.instantiateViewController(identifier: "welcomViewID") as! UINavigationController
            viewController.modalTransitionStyle = .crossDissolve
            viewController.modalPresentationStyle = .overFullScreen
            self.present(viewController, animated: true, completion: nil)
        }
        
    }
    

    @IBAction func signin_Tapped(_ sender: Any) {
        self.performSegue(withIdentifier: "signinsegue", sender: nil)
    }
    
    @IBAction func signup_Tapped(_ sender: Any) {
        self.performSegue(withIdentifier: "signupsegue", sender: nil)
    }
    
}
