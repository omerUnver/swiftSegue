//
//  ViewController.swift
//  bilgeIsOdev6
//
//  Created by M.Ömer Ünver on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var saat: UILabel!
    var zaman = 0
    var zamanlayici = Timer()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func basla(_ sender: Any) {
        saat.text = String(zaman)
        zaman = 0
        zamanlayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerApp), userInfo: nil, repeats: true)
       
    }
   
  
    @objc func timerApp(){
        saat.text = String(zaman)
        zaman += 1
        if zaman == 6 {
            zamanlayici.invalidate()
            yonlendirici()
        }
        }
    
    func yonlendirici(){
        performSegue(withIdentifier: "first", sender: nil)
    }
}

