//
//  ViewController.swift
//  timerApp
//
//  Created by oğuzhan salkım on 3.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var remainingTime = 15
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func startBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    @objc func timerFunc(){
        timeLabel.text = " time: \(remainingTime) "
        remainingTime = remainingTime - 1
        if remainingTime == 0 {
            timeLabel.text = "time overdue"
            timer.invalidate()
            remainingTime = 15
        }
    }
    
    
}

