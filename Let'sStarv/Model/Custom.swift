//
//  TwentyFoureHrs.swift
//  Let'sStarv
//
//  Created by Jazzband on 26.05.2022.
//

import UIKit

class Custom: UIViewController {
    
    var timer : Timer?
    var count  = 0
    var timerDate = 0.0
    
    var timerLabel = UILabel()
    var datePicker = UIDatePicker()
    var startButton = UIButton()
    var stopButton = UIButton()
    
    
    // MARK: - Labels and Buttons
    
    let greetingLabel : UILabel = {
        let labal = UILabel()
        labal.text = "Create your fasting"
        labal.font = UIFont.boldSystemFont(ofSize: 24)
        labal.textColor = .black
        labal.numberOfLines = 0
        labal.textAlignment = .center
        labal.translatesAutoresizingMaskIntoConstraints = false
        return labal
    }()
    
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        view.addSubview(timerLabel)
        timerLabel.frame = CGRect(x: 0, y: 200, width: 200, height: 100)
        timerLabel.center.x = view.center.x
        timerLabel.textAlignment = .center
        timerLabel.layer.cornerRadius = 15
        timerLabel.layer.borderColor = UIColor.black.cgColor
        timerLabel.layer.borderWidth = 2
        timerLabel.font = UIFont.systemFont(ofSize: 30)
        
        view.addSubview(datePicker)
        datePicker.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        datePicker.center = view.center
        datePicker.addTarget(self, action: #selector(chooseTimerPicker(sender:)), for: .valueChanged)
   
        datePicker.preferredDatePickerStyle = .wheels
        
        
        view.addSubview(startButton)
        startButton.frame = CGRect(x: 0, y: view.frame.height - 200, width: 300, height: 70)
        startButton.setTitle("Start", for: .normal)
        startButton.center.x = view.center.x
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = .black
        startButton.layer.cornerRadius = 15
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        startButton.addTarget(self, action: #selector(startTimer(sender:)), for: .touchUpInside)
        
        view.addSubview(stopButton)
        stopButton.frame = CGRect(x: 0, y: view.frame.height - 100, width: 300, height: 70)
        stopButton.setTitle("Stop", for: .normal)
        stopButton.center.x = view.center.x
        stopButton.setTitleColor(.white, for: .normal)
        stopButton.backgroundColor = .black
        stopButton.layer.borderColor = UIColor.black.cgColor
        stopButton.layer.borderWidth = 2
        stopButton.layer.cornerRadius = 15
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        
    }
    
    //MARK: - timer
    
    @objc func chooseTimerPicker (sender: UIDatePicker){
        timerDate = sender.date.timeIntervalSince1970
    }
    
    @objc func startTimer(sender: UIButton){
        if sender.title(for: .normal) == "Start"{
            sender.setTitle("Pause", for: .normal)
            count = Int(self.timerDate) - Int(Date().timeIntervalSince1970)
            timerCountDown()
        }else{
            sender.setTitle("Play", for: .normal)
        }
    }
    
    @objc func timerCountDown(){
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            if self.count == 0{
                self.stopTimer()
            }else{
                self.count -= 1
                self.timerLabel.text = "\(self.count)"
            }
        })
    }
    
    @objc func stopTimer(){
        timer?.invalidate()
    }
    
    
}

