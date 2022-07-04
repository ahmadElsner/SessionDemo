//
//  SecondVC.swift
//  Demo
//
//  Created by Ahmad's MacMini on 21/06/22.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet var lblSecond : UILabel!
    @IBOutlet var imgViewSecond: UIImageView!
    
    var fromFirst = ""
    var fromImg = UIImage()
    
    var model : Model?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lblSecond.text = model?.name ?? ""
        imgViewSecond.image = UIImage(named: model?.img ?? "") ?? UIImage()
        imgViewSecond.layer.cornerRadius = imgViewSecond.frame.size.height/2
        imgViewSecond.contentMode = .scaleAspectFill
        
        

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
