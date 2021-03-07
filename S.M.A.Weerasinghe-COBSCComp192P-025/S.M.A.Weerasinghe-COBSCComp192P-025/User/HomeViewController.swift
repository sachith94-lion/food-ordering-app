//
//  HomeViewController.swift
//  S.M.A.Weerasinghe-COBSCComp192P-025
//
//  Created by Lionel Rajapakse on 2021-03-07.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    @IBOutlet weak var welconinLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func logoutButton_Tapped(_ sender: Any) {
        let auth = Auth.auth()
        
        do{
            try auth.signOut()
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "IsUserSignedIn")
            self.dismiss(animated: true, completion: nil)
        }catch let signOutError {
            self.present(Service.createAlertController(title: "Error", message: signOutError.localizedDescription), animated: true, completion: nil)
        }
    }
    
  
    
}
