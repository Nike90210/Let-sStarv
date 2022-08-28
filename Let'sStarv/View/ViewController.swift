

import UIKit

class ViewController: UIViewController {
    
// MARK: - Создание кнопок
    let sixteenHrs : UIButton = {
        let sixButton = UIButton()
        sixButton.layer.cornerRadius = 10
        sixButton.backgroundColor = .black
        sixButton.setTitle("16HRS", for: .normal)
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        return sixButton
    }()
    
    let twentyForHrs : UIButton = {
        let twentyButton = UIButton()
        twentyButton.layer.cornerRadius = 10
        twentyButton.backgroundColor = .black
        twentyButton.setTitle("24HRS", for: .normal)
        twentyButton.translatesAutoresizingMaskIntoConstraints = false
        return twentyButton
    }()
    
    let thirtySix : UIButton = {
        let thirtyButton = UIButton()
        thirtyButton.layer.cornerRadius = 10
        thirtyButton.backgroundColor = .black
        thirtyButton.setTitle("36HRS", for: .normal)
        thirtyButton.translatesAutoresizingMaskIntoConstraints = false
        return thirtyButton
    }()
    
    let fortyeight : UIButton = {
        let fourtybutton = UIButton()
        fourtybutton.layer.cornerRadius = 10
        fourtybutton.backgroundColor = .black
        fourtybutton.setTitle("48HRS", for: .normal)
        fourtybutton.translatesAutoresizingMaskIntoConstraints = false
        return fourtybutton
    }()
    
    let customButton : UIButton = {
        let custom = UIButton()
        custom.layer.cornerRadius = 10
        custom.backgroundColor = .black
        custom.setTitle("Custom", for: .normal)
        custom.translatesAutoresizingMaskIntoConstraints = false
        return custom
    }()
    
    override func viewDidLoad() {
        setConstraint()
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
        
        view.addSubview(thirtySix)
        NSLayoutConstraint.activate([
            thirtySix.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirtySix.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            thirtySix.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            thirtySix.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -220),
            thirtySix.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(fortyeight)
        NSLayoutConstraint.activate([
            fortyeight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fortyeight.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            fortyeight.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 220),
            fortyeight.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            fortyeight.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        
        view.addSubview(customButton)
        NSLayoutConstraint.activate([
            customButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -250),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.heightAnchor.constraint(equalToConstant: 50),
            customButton.widthAnchor.constraint(equalToConstant: 100)
            
        ])
        
    }
}
