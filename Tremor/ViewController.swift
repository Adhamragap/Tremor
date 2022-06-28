//
//  ViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeView: UIView!

    @IBOutlet weak var patientOutletPutton: UIButton!
    @IBOutlet weak var doctorOutletButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        designButtons(button: patientOutletPutton)
        designButtons(button: doctorOutletButton)
        designHomeView(view: homeView)
    }
    func designHomeView (view:UIView){
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 0.6)
        view.alpha = 0.4
        view.layer.cornerRadius = 40
    }
    func designButtons (button:UIButton){
        button.layer.shadowOffset = CGSize(width: 5, height: 1)
        button.layer.shadowColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 0.6)
        button.layer.shadowOpacity = 3
        button.layer.cornerRadius = patientOutletPutton.frame.height / 2
    }

}

