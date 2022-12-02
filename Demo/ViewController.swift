//
//  ViewController.swift
//  Demo
//
//  Created by Ahmad's MacMini on 20/06/22.
//

import UIKit

//class Reference{
//    var height = 10;
//
//    func method1(a:Int, b:Int){
//
//    }
//
//    func method1(a:Int, b:Int, c:Int){
//
//    }
//
//}
//
//struct Value{
//    var height = 15;
//}

//class Super {
//    func method(){
//        print("super called")
//    }
//}
//
//class ClassA: Super{
//    override func method() {
//        print("class A called")
//    }
//}
//
//class ClassB: Super{
//    override func method() {
//        print("class B Called")
//    }
//}


//class ABC{
//
//    let a : Int = 10
//    let b : Int = 5
//
//   private var result : Int = 0
//
//    func sum() -> Int{
//        result = a + b
//        return result
//    }
//
//    func display(){
//        result =
//        sum()
//        print("result: \(result)")
//    }
//
//}

enum List{
    case TableView
    case CollectionView
    case BoxLayout
    case AutoLayout
    case UIPickerView
}

class ViewController: UIViewController {
    
    @IBOutlet var btn : UIButton?
    @IBOutlet var lblWelcome: UILabel!
    @IBOutlet var txtSomeText: UITextField!
    @IBOutlet var imgViewProfile: UIImageView!
    @IBOutlet var tblViewListing: UITableView!
    
    var arrList : [List] = [.TableView,.CollectionView,.BoxLayout,.AutoLayout,.UIPickerView]
    
    
    @IBAction func BtnTapCalled(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewVC") as! TableViewVC
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Title"
        
        btn?.setTitle("Go To TableView", for: .normal)
        
        imgViewProfile.image = UIImage(named: "img")
        imgViewProfile.layer.cornerRadius = imgViewProfile.frame.size.height/2
        
        self.tblViewListing.delegate = self
        self.tblViewListing.dataSource = self

    }

    @IBAction func Action_GoToCollectionView(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionView") as! CollectionView
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Action_GoToBoxLayout(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BoxLayoutDesign") as! BoxLayoutDesign
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: UITableView Delegate and Datsource

extension ViewController:UITableViewDelegate,UITableViewDataSource{

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(arrList[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let object = arrList[indexPath.row]
        var vc : UIViewController?
        
        switch object {
        case .TableView:
            vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewVC") as? TableViewVC
            break
        case .CollectionView:
            vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionView") as? CollectionView
            break
        case .BoxLayout:
            vc = self.storyboard?.instantiateViewController(withIdentifier: "BoxLayoutDesign") as? BoxLayoutDesign
            break
        case .AutoLayout:
            vc = self.storyboard?.instantiateViewController(withIdentifier: "AutoLayoutVC") as? AutoLayoutVC
            break
        case .UIPickerView:
            vc = self.storyboard?.instantiateViewController(withIdentifier: "PickerViewVC") as? PickerViewVC
            break
        }
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
