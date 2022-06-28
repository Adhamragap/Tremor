//
//  ExcersisesViewController.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit
import youtube_ios_player_helper

class ExcersisesViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var currentExcersise: UIPageControl!
    var idArray = ["EqHcDCYRdZU","Ez2GeaMa4c8","h6m64LuyWzw","uOljoOvycuo","Hs-vPqfsO0Q","WRyPQO_u_qE","MsXlZ_phGNY","AZV3_NfcpVs","pWqext64kxM"]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        currentExcersise.currentPage = 0
        currentExcersise.numberOfPages = idArray.count
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return idArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ExcercisesCollectionViewCell
        let key = idArray[indexPath.row]
        cell.viewForYoutube.load(withVideoId: key)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width  - 10 , height: collectionView.frame.height - 10)
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        currentExcersise.currentPage = indexPath.row
    }
}
