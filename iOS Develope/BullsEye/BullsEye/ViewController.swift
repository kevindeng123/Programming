//
//  ViewController.swift
//  BullsEye
//
//  Created by Kevin Deng on 6/4/19.
//  Copyright © 2019 KevinStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startNewGame()
        // 设置滑动条的外观
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")!
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage?.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage?.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
    }
    
    //定义 outlet 类型的变量
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue = 50
    var targetValue = 0
    var score = 0
    var round = 0
    
    func startNewRound(){
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabel()
    }
    
    func updateLabel(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    func startNewGame(){
        score = 0
        round = 0
        startNewRound()
    }
    
    @IBAction func startOver(){
        startNewGame()
    }

    @IBAction func showAlert(){
        //定义差值
        let difference = abs(currentValue - targetValue)
        
        //定义当前得分
        var points = 100 - difference
        
        //设置标题内容
        let title: String
        if difference == 0 {
            title = "运气逆天！赶紧去买彩票吧！"
            points += 100
        }else if difference < 5 {
            title = "太棒了！差一点就 100 分了！"
            if difference == 1 {
                points += 50
            }
        }else if difference < 10 {
            title = "很不错！继续努力！"
        }else {
            title = "差太远了！"
        }
        
        //计算总得分
        score += points
        
        //设置message信息的内容
        //let message = "滑动条当前的数值：\(currentValue)" + "\n目标数值是：\(targetValue)" + "\n差值是：\(difference)" + "\n你的得分是：\(points)"
        let message = "当前得分是：\(points)分"
        //设置alert信息的内容
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {_ in self.startNewRound()})
        alert.addAction(action)
        
        //显示提示信息
        present(alert, animated: true, completion: nil)
        
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        //print("滑动条的当前数值：\(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

