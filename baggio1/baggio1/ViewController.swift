//
//  ViewController.swift
//  baggio1
//
//  Created by ios135 on 2017/5/29.
//  Copyright © 2017年 ios135. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("aa")
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(gotobaggioVC1), userInfo: nil, repeats: false)
        
    
        
        var ref: DatabaseReference!
        
        ref = Database.database().reference()
        ref.setValue(["name":"Roberto"])
        
        
        
        
        self.writeFile()
        
    }

    func gotobaggioVC1(){
        
    
        
        
    let vc1=self.storyboard?.instantiateViewController(withIdentifier: "baggioVC1") as! baggioVC1
    print("goto baggioVC1")
        self.navigationController?.pushViewController(vc1, animated: true)
        
    
    
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func writeFile(){
        let file="file.txt"
        let text="some text"
        
        if let dir=FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let path=dir.appendingPathComponent(file)
            
            print(path)
            do{
                try text.write(to: path, atomically: false, encoding: String.Encoding.utf8)
            }
            catch{}
            
            do{
                let text2=try String (contentsOf: path, encoding: String.Encoding.utf8)
            }
            catch{}
        }
    
    
    }

}


