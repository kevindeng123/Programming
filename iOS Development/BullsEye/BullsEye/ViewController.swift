//
//  ViewController.swift
//  BullsEye
//
//  Created by Kevin Deng on 6/4/19.
//  Copyright © 2019 KevinStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue:Int = 50 // 定义了一个变量
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        //1.设置message信息的内容
        let message = "滑动条当前的数值：\(currentValue)"
        //2.设置alert信息的内容
        let alert = UIAlertController(title: "这是标题", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "这又是标题", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        //print("滑动条的当前数值：\(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

