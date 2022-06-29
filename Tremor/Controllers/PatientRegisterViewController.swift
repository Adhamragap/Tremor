//
//  PatientRegisterViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class PatientRegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var showesultsOutletButton: UIButton!
  
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var deviceIDTextField: UITextField!
    @IBOutlet weak var doctorUserNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        showesultsOutletButton.layer.cornerRadius = showesultsOutletButton.frame.height / 2
    }
    
    @IBAction func showResultsAciton(_ sender: UIButton) {
        guard let name = usernameTextField.text, usernameTextField.text?.count != 0, let password = passwordTextField.text, passwordTextField.text?.count != 0,let age = ageTextField.text, ageTextField.text?.count != 0,let gender = genderTextField.text, genderTextField.text?.count != 0,let deviceID = deviceIDTextField.text, deviceIDTextField.text?.count != 0,let doctorUserName = doctorUserNameTextField.text, doctorUserNameTextField.text?.count != 0 else {
            popupAlert(message: "please enter  all fields")
           return
        }
        if name == "Omar", password == "1",age == "44",gender == "male", deviceID == "1324",doctorUserName == "Adham" {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "userTabBarViewController"){
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
