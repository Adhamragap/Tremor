//
//  ContactDoctorVC.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class ContactDoctorVC: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var whatsappNumberLabel: UILabel!
    @IBOutlet weak var callYourDoctorText: UITextView!
    let phoneNumber = "+2001208756581"
    override func viewDidLoad() {
        super.viewDidLoad()
        callYourDoctorText.layer.cornerRadius = callYourDoctorText.frame.height / 4
        phoneNumberLabel.text = phoneNumber
        whatsappNumberLabel.text = phoneNumber
      
    }
    

    @IBAction func call(_ sender: UIButton) {
        guard let number = URL(string: "tel://\(phoneNumber)")else{
            return
        }
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
     @IBAction func chatWhatsapp(_ sender: UIButton) {
         let url  = NSURL(string: "whatsapp://send?phone=" + "\(self.phoneNumber)")

         if UIApplication.shared.canOpenURL(url! as URL) {
                 // Open Whatsapp
             UIApplication.shared.open(url! as URL, options: [:]){ (success) in

             if success {
             print("WhatsApp accessed successfully")
             } else {
             print("Error accessing WhatsApp")
             }

         }
     }
         
     }
}
