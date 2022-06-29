//
//  NewPatientViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class NewPatientViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var showResultsButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        showResultsButtonOutlet.layer.cornerRadius = showResultsButtonOutlet.frame.height / 2
        showResultsButtonOutlet.layer.shadowOffset = CGSize(width: 5, height: 5)
        showResultsButtonOutlet.layer.shadowOpacity = 4
    }
    

}
