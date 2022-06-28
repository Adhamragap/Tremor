//
//  LoginPatientVC.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class LoginPatientVC: UIViewController {
    @IBOutlet weak var signInPatientOutlet: UIButton!
    @IBOutlet weak var createAccountLabel: UILabel!
    @IBOutlet weak var patientUserName: UITextField!
    @IBOutlet weak var patientPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        signInPatientOutlet.layer.cornerRadius = signInPatientOutlet.frame.height / 2
        patientUserName.layer.cornerRadius = patientUserName.frame.height / 2
        patientPassword.layer.cornerRadius = patientPassword.frame.height / 2
        makingTapGesture()
    }
    func makingTapGesture (){
        let tap = UITapGestureRecognizer(target: self, action: #selector(showRegister))
        createAccountLabel.addGestureRecognizer(tap)
        createAccountLabel.isUserInteractionEnabled = true
    }
    @objc func showRegister(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "PatientRegisterViewController") {
           present(vc, animated: true, completion: nil)
        }
    }
    func popupAlert(message:String){
        let alert = UIAlertController(title: "Oops", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func signInActionButton(_ sender: UIButton) {
        guard let userName = patientUserName.text,patientUserName.text?.count != 0 else {
            popupAlert(message: "please enter your email and password")
            return
        }
        guard let password = patientPassword.text,patientPassword.text?.count != 0 else {
            popupAlert(message: "please enter your paswored")
            return
        }
        
        if userName == "Omar", password == "1" {
            let vc = storyboard?.instantiateViewController(withIdentifier: "userTabBarViewController")
            present(vc!, animated: true, completion: nil)
        }else {
            popupAlert(message: "there is no username or password match this")
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
