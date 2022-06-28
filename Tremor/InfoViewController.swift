//
//  InfoViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class InfoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   
    @IBOutlet weak var tableView: UITableView!
    var imageArray = [UIImage(named: "link_3"),UIImage(named: "link_5"),UIImage(named: "link_2"),UIImage(named: "link_1"),UIImage(named: "link_6"),UIImage(named: "link_4")]
    var linksArray = ["https://www.parkinson.org","https://www.parkinsonsresource.org","https://www.apdaparkinson.org","https://www.davisphinneyfoundation.org","https://www.michaeljfox.org","https://www.parkinsonalliance.org"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
      

    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? InfoCell else {
            print("no cell")
            return UITableViewCell()
        }
//        cell.layer.borderWidth = 3
//        cell.layer.borderColor = CGColor(red: 0, green: 0.5, blue: 1, alpha: 0.6)
//        cell.layer.shadowOffset = CGSize(width: 4, height: 1)
       
        cell.hyperLink.text = linksArray[indexPath.row]
        cell.pageImage.image = imageArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch (indexPath.row) {
        case 0 :
            if let url = URL(string: "https://www.parkinson.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
        case 1  :
            if let url = URL(string: "https://www.parkinsonsresource.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
        case 2 :
            if let url = URL(string: "https://www.apdaparkinson.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
        case 3 :
            if let url = URL(string: "https://www.davisphinneyfoundation.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
        case 4 :
            if let url = URL(string: "https://www.michaeljfox.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
            
        case 5 :
            if let url = URL(string: "https://www.parkinsonalliance.org"){
                UIApplication.shared.open(url, options: [:]) { done in
                   
                }
            }
        default :
            return
        }
        
        
    }
    
}
