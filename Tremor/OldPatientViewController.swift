//
//  OldPatientViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class OldPatientViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passworedTextField: UITextField!
    @IBOutlet weak var showResutlOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        showResutlOutlet.layer.cornerRadius = showResutlOutlet.frame.height / 2
        showResutlOutlet.layer.shadowOffset = CGSize(width: 5, height: 5)
        showResutlOutlet.layer.shadowOpacity = 4
    }
    func popupAlert(message:String){
        let alert = UIAlertController(title: "Oops", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showResultAction(_ sender: UIButton) {
        guard let userName = userNameTextField.text,userNameTextField.text?.count != 0 else {
            popupAlert(message: "please enter your email and password")
            return
        }
        guard let password = passworedTextField.text,passworedTextField.text?.count != 0 else {
            popupAlert(message: "please enter your paswored")
            return
        }
        if userName == "Omar", password == "1" {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "ReadingsDoctorViewController") {
                present(vc, animated: true, completion: nil)
            }
           
        }

    }

}
