//
//  ViewController2.swift
//  bilgeIsOdev6
//
//  Created by M.Ömer Ünver on 15.04.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    var message = ""
    func check(){
        let mail = "1234@gmail.com"
        let password = "123"
        if mailText.text == mail && passwordText.text == password {
            message = "Hoşgeldiniz"
        }else {
            message = "Yanlış Bilgi"
        }
    }
    
   
    @IBAction func kayitOl(_ sender: Any) {
    }

    @IBAction func girisBtn(_ sender: Any) {
        check()
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
    let geciciViewController = segue.destination as! ViewController3
            geciciViewController.gonderilenLable = message
        }
    }
    
    
    
    
    
}
