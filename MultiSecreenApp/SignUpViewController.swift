//
//  SignUpViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 23/04/2021.
//

import UIKit
struct User {
    let name:String
    let pass:String
    let email:String
}

class SignUpViewController: UIViewController {
    var user :User!
    var name = ""
    var email = ""
    var pass = ""
    @IBOutlet var txtEmail : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtPass : UITextField!
    @IBAction func btnSignUp(_ sender:UIButton){
        performSegue(withIdentifier: "signUpGoToHome", sender: self)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "signUpGoToHome"{
        if !name.isEmpty && !email.isEmpty && !pass.isEmpty{
            return true
        }else {
            let dialog = UIAlertController(title: "check your input", message: "", preferredStyle: .alert)
            dialog.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(dialog, animated: true, completion: nil)
            return false}
        
        }else {
            return true
        }
    }
    @objc func onEmailChange(_ sender:UITextField){
        if ((sender.text?.isEmpty) != nil){
            email = sender.text!
        }
        
    }
    @objc func onNameChange(_ sender:UITextField){
        if ((sender.text?.isEmpty) != nil){
            name = sender.text!
        }
        
        
    }
    @objc func onPassChange(_ sender:UITextField){
        if ((sender.text?.isEmpty) != nil){
            pass = sender.text!
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.addTarget(self, action: #selector(onNameChange(_:)), for: .editingChanged)
        txtPass.addTarget(self, action: #selector(onPassChange(_:)), for: .editingChanged)
        txtEmail.addTarget(self, action: #selector(onEmailChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    


}
