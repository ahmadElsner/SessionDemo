//
//  BoxLayoutDesign.swift
//  Demo
//
//  Created by mahima on 04/07/22.
//
import UIKit
class BoxLayoutDesign: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    var noOfItems = Int()
    @IBOutlet var BoxClnView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.BoxClnView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
       
        BoxClnView.delegate = self
        BoxClnView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1 {
            noOfItems = 5
            return noOfItems
        }else {
            noOfItems = 4
            return noOfItems
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellForBox", for: indexPath) as! CollectionViewCellForBox
        cell.imgBox.backgroundColor = .lightGray
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            noOfItems = 5
        }
        else {
            noOfItems = 4
        }
       
  let width = (Int(collectionView.frame.size.width) / 6)
var rowWidth = Int()
        switch (indexPath.section){
        case 0 :
            rowWidth = indexPath.row % 2 == 0 ? width :width*2
            break
            
        case 1:
            rowWidth = indexPath.row == 2 ? width*2 :width
        case 2:
            rowWidth = indexPath.row % 2 == 0 ? width*2 :width
        case 3:
            rowWidth = indexPath.row == 2 ? width*3 :width
        default:
            rowWidth = width
            break
        }
        

        let size = CGSize(width: rowWidth, height: 120)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
