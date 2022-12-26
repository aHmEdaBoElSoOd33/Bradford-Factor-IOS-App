//
//  ResultsVC.swift
//  Bradford Factor
//
//  Created by Ahmed on 26/12/2022.
//

import UIKit

class ResultsVC: UIViewController {

    @IBOutlet weak var resultsTitleLbl: UILabel!
    @IBOutlet weak var resultInfo: UILabel!
    @IBOutlet weak var resultsLbl: UILabel!
    
    var bfResult : Int?
    var bfresultInfo : String?
    var advise : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultsLbl.text = "\(bfResult!)"
        switch bfResult! {
        case 0...25:
            advise="لا مشكلة"
            view.backgroundColor = UIColor.green
        case 26...100:
            advise="يحتاج الموظف إلى الاهتمام"
            view.backgroundColor = UIColor.yellow
        case 101...500:
            advise = "الموظف يحتاج إلى عقاب"
            view.backgroundColor = UIColor.orange
        case 501... :
            advise="الموظف يحتاج إلى عقوبة قاسية"
            view.backgroundColor = UIColor.red
        default:
            advise=""
        } 
        
        resultInfo.text = advise
    }
    
    @IBAction func tryAgain(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
