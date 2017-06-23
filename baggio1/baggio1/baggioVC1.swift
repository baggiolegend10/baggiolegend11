//
//  baggioVC1.swift
//  baggio1
//
//  Created by ios135 on 2017/6/9.
//  Copyright © 2017年 ios135. All rights reserved.
//

import UIKit

class baggioVC1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var myTableView: UITableView!
    
    var SoccerLeague: [String] = ["義大利甲組聯賽(Series A)", "西班牙甲組聯賽(La Liga)", "德國甲組聯賽(Bundesliga)","英格蘭超級聯賽(Premier League)"]
    
    var SeriesA: [String] = ["祖文特斯(Juventus)", "國際米蘭(Internazionale Milano)", "AC米蘭(A.C.Milan)", "羅馬(As Roma)"]
    var LaLiga: [String] = ["皇家馬德里(Real Mardrid)", "巴塞隆納(Barcelona)", "馬德里競技(Atletico Madrid)", "畢爾包競技(Atletico Bilbao)"]
    var Bundesliga:[String] = ["拜仁慕尼黑(Bayern Munich)","多特蒙德(Borussia Dortmund)","沙爾克04(Schalke 04)","漢堡(Hamburger)"]
    var PremierLeague: [String] = ["切爾西(Chelsea)", "曼聯(Mancherster United)", "曼城(Mancherster City)", "利物浦(Liverpool)", "兵工廠(Aresnal)"]
    

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SoccerLeague.count
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return SeriesA.count
        case 1:
            return LaLiga.count
        case 2:
            return Bundesliga.count
        case 3:
            return PremierLeague.count
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath!) -> UITableViewCell {
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:"cell")

        
        var str: String!
        switch indexPath.section {
        case 0:
            str = SeriesA[indexPath.row]
        case 1:
            str = LaLiga [indexPath.row]
        case 2:
            str = Bundesliga[indexPath.row]
        case 3:
            str = PremierLeague[indexPath.row]
            
        default:
            break
        
        }
        
//        img_0_0
        
        let imgStr="img_"+String(indexPath.section)+"_"+String(indexPath.row)
        
        cell.textLabel?.text = str
        cell.imageView?.image=UIImage(named:imgStr)
        

        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SoccerLeague[section]
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rect=UIScreen.main.bounds
        
        rect=CGRect(x: 0, y: 20, width: rect.size.width, height: rect.size.height)
        
        myTableView=UITableView(frame: rect, style: UITableViewStyle.plain)
        myTableView.dataSource=self
        myTableView.delegate=self
        self.view.addSubview(myTableView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc2=self.storyboard?.instantiateViewController(withIdentifier: "baggioVC2") as! baggioVC2
        vc2.indexRow=indexPath.row
        vc2.indexSection=indexPath.section
        
        print("goto baggioVC2")
        self.navigationController?.pushViewController(vc2, animated: true)
        
//        self.present(vc2, animated: true, completion: nil)
        
        
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
