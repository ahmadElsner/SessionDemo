//
//  TableViewVC.swift
//  Demo
//
//  Created by Ahmad's MacMini on 23/06/22.
//

import UIKit

class Model{
    var name = ""
    var desc = ""
    var img = ""
    
    init(name:String,desc:String,img:String){
        self.name = name
        self.desc = desc
        self.img = img
    }
}

class TableViewVC: UIViewController {
    
    @IBOutlet var tblView: UITableView!
    
    var modelArr : [Model] = [Model(name: "jay", desc: "", img: "img1"),
                              Model(name: "prakash", desc: "prakash desk dygfydhfgfhdfghdfdhfhhfdvsvcvscvvcshgfdhfdfcvcvvccvhdhfvcvccdvcsdhdcdcdhdsvccvcvcdcvvcsvcvvcvvcvvcvcvcvcvcvhfdhdfvcvcvcvc", img: "img2"),
                              Model(name: "raj", desc: "raj desc", img: "img3"),
                              Model(name: "deep", desc: "deep desc", img: "img4"),
                              Model(name: "jay", desc: "", img: "img1"),
                              Model(name: "prakash", desc: "prakash desk", img: "img2"),
                              Model(name: "Abhishek", desc: "Abhishek Desc", img: "img3"),
                              Model(name: "raj", desc: "raj desc", img: "img3"),
                              Model(name: "deep", desc: "deep desc", img: "img4"),
                              Model(name: "jay", desc: "", img: "img1"),
                              Model(name: "prakash", desc: "prakash desk", img: "img2"),
                              Model(name: "Abhishek", desc: "Abhishek Desc", img: "img3")
                             ]
    
    var dict : [[String:Any]] = [["name":"jay","desc":"jay Desc"],
                               ["name":"prakash","desc":"prakash Desc"],
                               ["name":"raj", "desc":"raj Desc"],
                               ["name":"deep", "desc":"deep Desc"],
                               ["name":"krunal", "desc":"krunal Desc"],
                               ["name": "Abhishek", "desc":"Abhishek Desc"]
    ]
    
    var arrData = ["jay", "prakash", "raj", "deep", "krunal", "abhishek"]
    var arrDesc = ["jay Description","prakash Description" ,"raj Description", "deep Description", "krunal Description", "abhishek Description"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblView.reloadData()

//        self.tblView.delegate = self
//        self.tblView.dataSource = self
       
        // Do any additional setup after loading the view.
    }

}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TblViewCell", for: indexPath) as! TblViewCell
            
            print(indexPath.row)
            
            cell.lblTitle.text = modelArr[indexPath.row].name
            cell.lblDescription.text = modelArr[indexPath.row].desc
            cell.imgCell.image = UIImage(named: modelArr[indexPath.row].img)
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeightTblCell", for: indexPath) as! HeightTblCell
            
           // cell.backgroundColor = .systemMint
            print(indexPath.row)
            
            cell.lblTitle.text = modelArr[indexPath.row].name
            cell.lblDescription.text = modelArr[indexPath.row].desc
            //cell.imgCell.image = UIImage(named: modelArr[indexPath.row].img)
            
            //cell.textLabel?.text = modelArr[indexPath.row].name
            //cell.detailTextLabel?.text = modelArr[indexPath.row].desc
            return cell
        }
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 145
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
//        vc.fromFirst = modelArr[indexPath.row].name
//        vc.fromImg = UIImage(named: modelArr[indexPath.row].img) ?? UIImage()
        
        vc.model = modelArr[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   // func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //if section == 0{
          // return "Img Data"
       // }else{
       //    return "label Data"
       // }
    //}
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        view.backgroundColor = .systemMint
        
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.size.width - 20, height: 30))
        lbl.backgroundColor = .cyan
        lbl.center = view.center
        lbl.textAlignment = .center
        lbl.text = "Section"
        lbl.textColor = .black
        
        view.addSubview(lbl)
        
        return view
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
}
