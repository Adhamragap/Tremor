//
//  ReadingsPateintViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class ReadingsPateintViewController: UIViewController {

    @IBOutlet weak var informationView: UIView!
    @IBOutlet weak var patientName: UILabel!
    @IBOutlet weak var patientGender: UILabel!
    @IBOutlet weak var patientAge: UILabel!
    @IBOutlet weak var DiagnosesLabel: UILabel!
    @IBOutlet weak var severityLabel: UILabel!
    @IBOutlet weak var stressLabel: UILabel!
    @IBOutlet weak var dignosesView: UIView!
    @IBOutlet weak var severityView: UIView!
    @IBOutlet weak var stressView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

       viewsDesign(viewName:informationView)
        viewsDesign(viewName:dignosesView)
        viewsDesign(viewName:severityView)
        viewsDesign(viewName:stressView)
        
        // Do any additional setup after loading the view.
    }
    func viewsDesign (viewName:UIView){
       viewName.layer.cornerRadius = informationView.frame.height / 5
       viewName.layer.shadowOpacity = 3
       viewName.layer.shadowOffset = CGSize(width: 2, height: 0)
       viewName.layer.shadowColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 1)
   }
    

    @IBAction func logOutPatient(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController"){
            present(vc, animated: true, completion: nil)
        }
    }

}
