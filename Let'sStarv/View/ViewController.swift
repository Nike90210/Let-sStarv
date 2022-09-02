

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Создание кнопок
    
    // MARK: - 16 часов
    @objc func sixteenScreen (_ sender: UIButton ){
        performSegue(withIdentifier: "showSixteen", sender: self)
    }
    
    let sixteenHrs : UIButton = {
        let sixButton = UIButton()
        sixButton.layer.cornerRadius = 10
        sixButton.backgroundColor = .black
        sixButton.setTitle("16HRS", for: .normal)
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.addTarget(self, action: #selector(sixteenScreen(_:)), for: .touchUpInside)
        return sixButton
    }()
    
    
    // MARK: -24 часов
    @objc func twentyFour (_ sender: UIButton ){
        performSegue(withIdentifier: "showTwentyFour", sender: self)
    }
    
    let twentyForHrs : UIButton = {
        let twentyButton = UIButton()
        twentyButton.layer.cornerRadius = 10
        twentyButton.backgroundColor = .black
        twentyButton.setTitle("24HRS", for: .normal)
        twentyButton.translatesAutoresizingMaskIntoConstraints = false
        twentyButton.addTarget(self, action: #selector(twentyFour(_:)), for: .touchUpInside)
        return twentyButton
    }()
    
    // MARK: - 36 часов
    @objc func thirtySix (_ sender: UIButton ){
        performSegue(withIdentifier: "showThirtySix", sender: self)
    }
    
    let thirtySixHrs : UIButton = {
        let thirtyButton = UIButton()
        thirtyButton.layer.cornerRadius = 10
        thirtyButton.backgroundColor = .black
        thirtyButton.setTitle("36HRS", for: .normal)
        thirtyButton.translatesAutoresizingMaskIntoConstraints = false
        thirtyButton.addTarget(self, action: #selector(thirtySix(_:)), for: .touchUpInside)
        return thirtyButton
    }()
    
    // MARK: -48 часов
    @objc func fourtyEight (_ sender: UIButton ){
        performSegue(withIdentifier: "showFourtyEight", sender: self)
    }
    
    let fortyeightHrs : UIButton = {
        let fourtybutton = UIButton()
        fourtybutton.layer.cornerRadius = 10
        fourtybutton.backgroundColor = .black
        fourtybutton.setTitle("48HRS", for: .normal)
        fourtybutton.translatesAutoresizingMaskIntoConstraints = false
        fourtybutton.addTarget(self, action: #selector(fourtyEight(_:)), for: .touchUpInside)
        return fourtybutton
    }()
    
    // MARK: - Кастом
    let customButtonHrs : UIButton = {
        let custom = UIButton()
        custom.layer.cornerRadius = 10
        custom.backgroundColor = .black
        custom.setTitle("Custom", for: .normal)
        custom.translatesAutoresizingMaskIntoConstraints = false
        return custom
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraint()
        self.view.addSubview(sixteenHrs)
    }
    
    
}

//MARK: - Закрепляем кнопки на View
extension ViewController {
    
    func setConstraint(){
        view.addSubview(sixteenHrs)
        NSLayoutConstraint.activate([
            sixteenHrs.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            sixteenHrs.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            sixteenHrs.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -220),
            sixteenHrs.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(twentyForHrs)
        NSLayoutConstraint.activate([
            twentyForHrs.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            twentyForHrs.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 220),
            twentyForHrs.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            twentyForHrs.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(thirtySixHrs)
        NSLayoutConstraint.activate([
            thirtySixHrs.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirtySixHrs.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            thirtySixHrs.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            thirtySixHrs.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -220),
            thirtySixHrs.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(fortyeightHrs)
        NSLayoutConstraint.activate([
            fortyeightHrs.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fortyeightHrs.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            fortyeightHrs.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 220),
            fortyeightHrs.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            fortyeightHrs.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(customButtonHrs)
        NSLayoutConstraint.activate([
            customButtonHrs.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -250),
            customButtonHrs.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButtonHrs.heightAnchor.constraint(equalToConstant: 50),
            customButtonHrs.widthAnchor.constraint(equalToConstant: 100)
            
        ])
        
    }
}
