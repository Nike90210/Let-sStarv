//
//  TwentyFoureHrs.swift
//  Let'sStarv
//
//  Created by Jazzband on 26.05.2022.
//

import UIKit

class ThirtySixHrs: UIViewController {
    
    var thirtySix = (60 * 60) * 36
    let shapeLayer = CAShapeLayer()
    var timer = Timer()
    var isTimerRunning = false
    
    
    // MARK: - Labels and Buttons
    
    let timerLabel : UILabel = {
        let label = UILabel()
        label.text = "36:00:00"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 45)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let greetingLabel : UILabel = {
        let labal = UILabel()
        labal.text = "Start your fasting"
        labal.font = UIFont.boldSystemFont(ofSize: 24)
        labal.textColor = .black
        labal.numberOfLines = 0
        labal.textAlignment = .center
        labal.translatesAutoresizingMaskIntoConstraints = false
        return labal
    }()
    
    let startbutton : UIButton = {
        let buttonS = UIButton()
        buttonS.layer.cornerRadius = 20
        buttonS.backgroundColor = .black
        buttonS.setTitle("Start", for: .normal)
        buttonS.translatesAutoresizingMaskIntoConstraints = false
        return buttonS
    }()
    
    let stopbutton : UIButton = {
        let buttonP = UIButton()
        buttonP.layer.cornerRadius = 20
        buttonP.backgroundColor = .black
        buttonP.setTitle("Cancel", for: .normal)
        buttonP.translatesAutoresizingMaskIntoConstraints = false
        return buttonP
    }()
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        animationCircle()
        
        setConstrains()
        
        startbutton.addTarget(self, action: #selector(startTimer), for: .touchUpInside)
        
        stopbutton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        
    }
    
    //MARK: - Animation and Core Graphics
    
    func animationCircle(){
        
        let endAngle = (-CGFloat.pi / 2)
        let startAngle = 2 * CGFloat.pi + endAngle
        
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 140, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        
        shapeLayer.path = circlePath.cgPath
        shapeLayer.strokeEnd = 1
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.lineWidth = 21
        shapeLayer.strokeColor = UIColor.red.cgColor
        view.layer.addSublayer(shapeLayer)
        
    }
    
    //MARK: - Timer
    
    
    @objc func startTimer(){
       
        if isTimerRunning == false {
            timerRunnin()
            startbutton.setTitle("play", for: .normal)
        }else {
            isTimerRunning = false
            timer.invalidate()
            startbutton.setTitle("pause", for: .normal)
        }
        
    }
    
    @objc func timerRunnin() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(coundDownTimer), userInfo: nil, repeats: true)
        isTimerRunning = true
    }
    
    @objc func coundDownTimer (){
        if thirtySix < 1 {
            cancel()

        } else {
            thirtySix -= 1
            timerLabel.text = timeString(time: TimeInterval(thirtySix))
            
        }
    }
    
    @objc func cancel() {
        timer.invalidate()
        thirtySix = ( 60 * 60 ) * 36
        timerLabel.text = timeString(time: TimeInterval(thirtySix))
        startbutton.setTitle("Start", for: .normal)
        
    }
    
    // ???????????????????????????? ?????????????????????? ???????????? ?? ????????,???????????? ?? ??????????????
    func timeString (time: TimeInterval) -> String {
        let hours = Int(thirtySix) / 3600
        let minutes = Int(thirtySix) / 60 % 60
        let second = Int(thirtySix) % 60
        return String(format: "%02i:%02i:%02i", hours,minutes,second)
    }
    
}

// MARK: - Extensions

// ???????????????????? ???????????? ?? ?????????????? ???? ??????????
extension ThirtySixHrs {
    
    func setConstrains(){
        view.addSubview(greetingLabel)
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            greetingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        
        view.addSubview(timerLabel)
        NSLayoutConstraint.activate([
            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        view.addSubview(startbutton)
        NSLayoutConstraint.activate([
            startbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -180),
            startbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startbutton.heightAnchor.constraint(equalToConstant: 70),
            startbutton.widthAnchor.constraint(equalToConstant: 300)
            
        ])
        
        view.addSubview(stopbutton)
        NSLayoutConstraint.activate([
            stopbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -80),
            stopbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopbutton.heightAnchor.constraint(equalToConstant: 70),
            stopbutton.widthAnchor.constraint(equalToConstant: 300)
            
        ])
    }
    
}
