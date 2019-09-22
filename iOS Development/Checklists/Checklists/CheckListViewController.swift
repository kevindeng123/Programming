//
//  ViewController.swift
//  Checklists
//
//  Created by Kevin Deng on 31/5/19.
//  Copyright © 2019 KevinStudio. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    var items = [ChecklistItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.prefersLargeTitles = true

        let item1 = ChecklistItem()
        item1.text = "重温德容为加盟巴萨寄出投名状"
        items.append(item1)
        
        let item2 = ChecklistItem()
        item2.text = "A股暴涨，赶紧去开个科创板的新户"
        item2.checked = true
        items.append(item2)
        
        let item3 = ChecklistItem()
        item3.text = "两会召开中，关注每天的新闻动态"
        item3.checked = true
        items.append(item3)
        
        let item4 = ChecklistItem()
        item4.text = "学习神奇的AI视频变脸技术"
        items.append(item4)
        
        }
    
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        //添加下面的代码
        let item = items[indexPath.row]
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = item.text
        
        //结束以上的新代码段
        configureCheckmark(for: cell, at: indexPath, with: item)
        return cell
    }
    
    //MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, at: indexPath, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //1
        items.remove(at: indexPath.row)
        
        //2
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    //MARK:- CONFIGURE THE CHECKMARK
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath, with item: ChecklistItem){
        if item.checked {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
    }
    
    //MARK:- CONFIGURE THE TEXT OF ITEM
    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    //MARK:- ACTIONS
    @IBAction func addItem(){
        let newRowIndex = items.count
        
        let item = ChecklistItem()
        item.text = "我是新添加的一行"
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        
        let indexPaths = [indexPath]
        
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
}

