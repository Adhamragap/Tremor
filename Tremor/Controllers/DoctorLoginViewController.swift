//
//  DoctorLoginViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class DoctorLoginViewController: UIViewController {

    
    @IBOutlet weak var doctorBassword: UITextField!
    @IBOutlet weak var doctorUserName: UITextField!
    @IBOutlet weak var signinOutletButton: UIButton!
    @IBOutlet weak var createAccountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        tapGesture()
            signinOutletButton.layer.cornerRadius = signinOutletButton.frame.height / 2
    }
    func tapGesture (){
        let tap = UITapGestureRecognizer(target: self, action: #selector(goToRegister))
        createAccountLabel.isUserInteractionEnabled = true
        createAccountLabel.addGestureRecognizer(tap)
    }
    
    @objc func goToRegister(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DoctorRegisterViewController"){
            present(vc, animated: true)
        }
    }
    func popupAlert(message:String){
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func signInActionButton(_ sender: UIButton) {
        guard let userName = doctorUserName.text,doctorUserName.text?.count != 0 else {
            popupAlert(message: "please enter your email and password")
            return
        }
        guard let password = doctorBassword.text,doctorBassword.text?.count != 0 else {
            popupAlert(message: "please enter your paswored")
            return
        }
        if userName == "Adham", password == "12345" {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DoctorForPatientViewController"){
                present(vc, animated: true, completion: nil)
            }else {
                popupAlert(message: "wrong passwed or user name")
            }

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
