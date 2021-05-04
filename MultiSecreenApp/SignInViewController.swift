//
//  SignInViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 23/04/2021.
//

import UIKit

class SignInViewController: UIViewController {
    var user = User(name: "omar", pass: "123456", email: "omar@gmail.com")
    @IBOutlet var txtName:UITextField!
    @IBOutlet var txtPass:UITextField!
    @IBOutlet var mTitle : UILabel!
    @IBOutlet var btn:UIButton!
    @IBAction func btnSignIn(_ sender : UIButton){
       // performSegue(withIdentifier: "signInGoToHome", sender: self)

    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       /* if identifier == "signInGoToHome" && checkPass && chechName{
            return true
        }else{
            return false
        }*/
        return true
    }
    var checkPass = false
    var chechName = false

  @objc func onNameChange(_ sender:UITextField){
    if user.name == sender.text {
        chechName = true
        if checkPass {
            btn.isEnabled = true
            btn.backgroundColor = .blue
        }else{
            btn.isEnabled = false
            btn.backgroundColor = .systemBlue
        }
    }else{
        chechName = false
        btn.isEnabled = false
        btn.backgroundColor = .systemBlue
    }
        
    }
    @objc func onPassChange(_ sender:UITextField){
        if user.pass == sender.text {
            checkPass = true
            if chechName {
                btn.isEnabled = true
                btn.backgroundColor = .blue
            }else{
                btn.isEnabled = false
                btn.backgroundColor = .systemBlue
            }
        }else{
            checkPass = false
            btn.isEnabled = false
            btn.backgroundColor = .systemBlue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.addTarget(self, action: #selector(onNameChange(_:)), for: .editingChanged)
        txtPass.addTarget(self, action: #selector(onPassChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    

 
}
