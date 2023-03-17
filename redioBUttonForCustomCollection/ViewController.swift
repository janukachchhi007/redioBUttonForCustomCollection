//
//  ViewController.swift
//  redioBUttonForCustomCollection
//
//  Created by R94 on 16/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10")]
    
    var name = ["1","2","3","4","5","6","7","8","9","10"]
    
    var selectCell = -1
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img1.image = image[indexPath.row]
        cell.label.text = name[indexPath.row]
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        
        if selectCell == indexPath.row{
            cell.redioCell.image = UIImage(systemName: "circle.fill")
        }
        else
        {
            cell.redioCell.image = UIImage(systemName: "circle")
        }
         return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170
                , height: 170)
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        selectCell = indexPath.row
        cv.reloadData()
  }
}

