//
//  ViewController.swift
//  Login
//
//  Created by Dylan on 9/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func forgotUserTapped(_ sender: Any) {
        performSegue(withIdentifier: "viewSegue", sender: forgotUsername)
    }
    @IBAction func forgotPassTapped(_ sender: Any) {
        performSegue(withIdentifier: "viewSegue", sender: forgotPassword)
        

        //Excerpt From Develop in Swift Fundamentals Apple Education https://books.apple.com/us/book/develop-in-swift-fundamentals/id6468967906 This material may be protected by copyright.
    }
    @IBAction func userNameTextFieldChanged(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPassword {    segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {    segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
}
