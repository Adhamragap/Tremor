//
//  ReadingsDoctorViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class ReadingsDoctorViewController: UIViewController {
    @IBOutlet weak var informationView: UIView!
    @IBOutlet weak var patientName: UILabel!
    @IBOutlet weak var diseaseDiagnosisView: UIView!
    @IBOutlet weak var tremorsSeverityView: UIView!
    
    @IBOutlet weak var patientGender: UILabel!
    @IBOutlet weak var patientAge: UILabel!
    @IBOutlet weak var stessLevelView: UIView!
    
    @IBOutlet weak var backButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewsDesign(viewName: informationView)
        viewsDesign(viewName: diseaseDiagnosisView)
        viewsDesign(viewName: stessLevelView)
        viewsDesign(viewName: tremorsSeverityView)
        backButtonDesign()
    }
    

    func backButtonDesign (){
       backButtonOutlet.layer.borderWidth = 4
       backButtonOutlet.layer.borderColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 1)
       backButtonOutlet.layer.shadowOpacity = 3
       backButtonOutlet.layer.shadowOffset = CGSize(width: 2, height: 0)
       backButtonOutlet.layer.shadowColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 1)
       backButtonOutlet.layer.cornerRadius = backButtonOutlet.frame.height / 2
   }
    func viewsDesign (viewName:UIView){
       viewName.layer.cornerRadius = informationView.frame.height / 5
       viewName.layer.shadowOpacity = 3
       viewName.layer.shadowOffset = CGSize(width: 2, height: 0)
       viewName.layer.shadowColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 1)
   }
    @IBAction func backButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func logOutDoctor(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController"){
            present(vc, animated: true, completion: nil)
        }
      
    }

}
