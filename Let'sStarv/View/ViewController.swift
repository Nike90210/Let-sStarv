

import UIKit

class ViewController: UIViewController {


    
    
    
    @IBOutlet weak var sixteenHrs: UIButton! {
        didSet {
            sixteenHrs.titleLabel?.textColor = .black
            sixteenHrs.backgroundColor = UIColor.clear
            sixteenHrs.titleLabel?.text = "16Hrs"
            sixteenHrs.layer.cornerRadius = 16.0
            sixteenHrs.layer.borderWidth = 2.0
          
            
        }
    }
    
    @IBOutlet weak var twentyFourHrs: UIButton!{
        didSet{
            twentyFourHrs.titleLabel?.textColor = .orange
            twentyFourHrs.backgroundColor = UIColor.clear
            twentyFourHrs.titleLabel?.text = "24Hrs"
           
            twentyFourHrs.layer.cornerRadius = 16.0
            twentyFourHrs.layer.borderWidth = 2.0
           
        }
    }
    
    @IBOutlet weak var thirtySixHrs: UIButton!{
        didSet{
            thirtySixHrs.titleLabel?.textColor = .orange
            thirtySixHrs.backgroundColor = UIColor.clear
            thirtySixHrs.titleLabel?.text = "36Hrs"
   
            thirtySixHrs.layer.cornerRadius = 16.0
            thirtySixHrs.layer.borderWidth = 2.0
           
        }
    }
    
    @IBOutlet weak var fourtyFourHrs: UIButton!{
        didSet{
            fourtyFourHrs.titleLabel?.textColor = .black
            fourtyFourHrs.backgroundColor = UIColor.clear
            fourtyFourHrs.titleLabel?.text = "48Hrs"
            fourtyFourHrs.layer.cornerRadius = 16.0
            fourtyFourHrs.layer.borderWidth = 2.0
           
        }
    }
    
    @IBOutlet weak var customHrs: UIButton!{
        didSet{
            customHrs.titleLabel?.textColor = .white
            customHrs.backgroundColor = UIColor.clear
            customHrs.titleLabel?.text = "Custom"
            customHrs.layer.cornerRadius = 16.0
            customHrs.layer.borderWidth = 2.0
         
        }
    }
    
    override func viewDidLoad() {
        
    }
  
    
}

