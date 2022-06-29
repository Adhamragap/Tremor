//
//  DoctorForPatientViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class DoctorForPatientViewController: UIViewController {

    @IBOutlet weak var newPatientOutlet: UIButton!
    @IBOutlet weak var oldPatientOutlet: UIButton!
    @IBOutlet weak var backButtonsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        designButtons(button: newPatientOutlet)
        designButtons(button: oldPatientOutlet)
        designbackButtonsView(view: backButtonsView)
       
        
    }
    func designbackButtonsView (view:UIView){
        view.layer.borderWidth = 2
        view.layer.borderColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 0.6)
        view.alpha = 0.6
        view.layer.cornerRadius = view.frame.height / 6
    }
    func designButtons (button:UIButton){
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowOpacity = 4
        button.layer.cornerRadius = newPatientOutlet.frame.height / 2
    }

}
