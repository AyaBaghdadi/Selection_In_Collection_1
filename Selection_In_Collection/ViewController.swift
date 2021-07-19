//
//  ViewController.swift
//  Selection_In_Collection
//
//  Created by Aya Baghdadi.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    //--------------------------------------------------------------------------------------------------
    // CollectionView Delegate
    //--------------------------------------------------------------------------------------------------

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.myTitleArr.count
    }
    
    //--------------------------------------------------------------------------------------------------
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! HomeCVC

        // Assign Title
        cell.nameCell.text = self.myTitleArr[indexPath.row]
        
        return cell
    }
    
    //--------------------------------------------------------------------------------------------------

    var lastIndexActive:IndexPath = [1 ,0]

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        if self.lastIndexActive != indexPath {

            // change here
        let cell = collectionView.cellForItem(at: indexPath) as! HomeCVC
        cell.nameCell.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.viewCell.backgroundColor = #colorLiteral(red: 0.8743465543, green: 0.1577501893, blue: 0.2328583598, alpha: 1)
        cell.viewCell.layer.masksToBounds = true

        let cell1 = collectionView.cellForItem(at: self.lastIndexActive) as? HomeCVC
        cell1?.nameCell.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cell1?.viewCell.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        cell1?.viewCell.layer.masksToBounds = true
        self.lastIndexActive = indexPath
            
            // Run for show
            // Thanks

        }
    }
    
    //--------------------------------------------------------------------------------------------------
    // End Delegate
    //--------------------------------------------------------------------------------------------------

    var myTitleArr = ["IOS" , "Swift" , "Objective-c" ,  "Android" , "Kotlin" , "Java" , "Flutter" , "Dart" , "DB" , "Frontend" , "Back-end" , "Graphic" ]
    
    // for title
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

