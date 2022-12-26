//
//  ViewController1.swift
//  Bradford Factor
//
//  Created by Ahmed on 26/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var tDayLbl: UILabel!
    @IBOutlet weak var sDayLbl: UILabel!
    @IBOutlet weak var calcLbl: UIButton!
    @IBOutlet weak var AllDayAbsenceLbl: UILabel!
    @IBOutlet weak var separetDayAbsenceLbl: UILabel!
    @IBOutlet weak var brabfordTitleLBL: UILabel!
    
    var aDay = 0
    var tDay = 0
    var bradford = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        sDayLbl.text = "0"
        tDayLbl.text = "0"
    }
    
    
    @IBAction func sStapperChanged(_ sender: UIStepper) {
        sDayLbl.text = String(Int(sender.value))
        aDay = Int(sender.value)
    }
    
    
    
    @IBAction func tStepperChanged(_ sender: UIStepper) {
        tDayLbl.text = String(Int(sender.value))
        tDay = Int(sender.value)
    }
    
    
    @IBAction func calcBtn(_ sender: Any) {
     
        
        
        bradford = aDay*aDay*tDay
        performSegue(withIdentifier: "GoResultVC", sender: self)
        
        
            
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! ResultsVC
        vc.bfResult =  bradford
    }
}
