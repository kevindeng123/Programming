//
//  ViewController.swift
//  Checklists
//
//  Created by Kevin Deng on 31/5/19.
//  Copyright © 2019 KevinStudio. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        //添加下面的代码
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "流浪地球"
        } else if indexPath.row == 1{
            label.text = "疯狂的外星人"
        } else if indexPath.row == 2{
            label.text = "飞驰人生"
        } else if indexPath.row == 3{
            label.text = "喜剧之王"
        }else if indexPath.row == 4{
            label.text = "小猪佩奇过大年"
        }
        
        //结束以上的新代码段
        return cell
    }

}

