//
//  DoctorRegisterViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class DoctorRegisterViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signInButtonOutlet: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButtonOutlet.layer.cornerRadius = signInButtonOutlet.frame.height / 2
    }
    

    @IBAction func signInButtonAction(_ sender: UIButton) {
        guard let userName = userNameTextField.text,userNameTextField.text?.count != 0,let email = emailTextField.text,emailTextField.text?.count != 0,let password = passwordTextField.text,passwordTextField.text?.count != 0 , let phoneNumber = phoneNumberTextField.text,phoneNumberTextField.text?.count != 0 else {
            popupAlert(message: "please enter all fields")
            return
        }
        if userName == "Adham" ,email == "adhamr192@gmail.com",password == "12345",phoneNumber == "01275395377"{
            if let vc = storyboard?.instantiateViewController(withIdentifier:"DoctorForPatientViewController") {
                present(vc, animated: true, completion: nil)
            }
        }
    }
    func popupAlert(message:String){
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
