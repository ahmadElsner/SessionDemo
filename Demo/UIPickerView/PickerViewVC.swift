//
//  PickerViewVC.swift
//  Demo
//
//  Created by Ahmad's MacMini on 07/07/22.
//

import UIKit

class PickerViewVC: UIViewController {
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var lblValue: UILabel!
    
    @IBOutlet var txtField: UITextField!
    
    
    var arrname : [String] = ["jay","deep","rahul"]
    var arrDescription : [String] = ["jay desc", "deep Desc", "rahul desc"]
    var arrComponent : [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrComponent = [arrname,arrDescription]
        
        txtField.inputView = pickerView
        
        pickerView.delegate = self
        pickerView.dataSource = self

       // pickerView.selectRow(4, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PickerViewVC: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrComponent.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrComponent[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //lblValue.text = "\(arrComponent[0][row]) \n \(arrComponent[1][row])"
//        if component == 0{
//
//            return modelArr[row].name
//        }else{
//
//            return modelArr[row].desc
//        }
        
//        if component == 0{
            return arrComponent[component][row]
//        }else{
//            return arrComponent[component][row]
//        }
        
        
    }
    
}
