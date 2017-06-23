//
//  baggioVC2.swift
//  baggio1
//
//  Created by ios135 on 2017/6/12.
//  Copyright © 2017年 ios135. All rights reserved.
//

import UIKit

class baggioVC2: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    var indexRow:Int?
    var indexSection:Int?
    
    func readFileToVC(){
    
        let filePath="txt_"+String(indexSection!)+"_"+String(indexRow!)+".txt"
        
        
        
        switch indexRow! {
        case 0:
            self.mylabel.text="0"
        case 1:
            self.mylabel.text="1"
        default:
            break
        }
        
//        let imgStr="img_"+String(indexPath.section)+"_"+String(indexPath.row)
//        imageView?.image=UIImage(named:imgStr)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden=false
        
        self.readFileToVC()
    }
    
    @IBAction func pushBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
