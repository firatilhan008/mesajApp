//
//  ViewController2.swift
//  mesajApp
//
//  Created by Fırat İlhan on 8.11.2022.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var nameText2: UILabel!

    @IBOutlet weak var mesajText2: UILabel!
    
    
    var nameSecond = ""
    var surNameSecond = ""
    var mesajSecond = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameText2.text = "\(nameSecond) \(surNameSecond)"
        mesajText2.text = "Mesajınız: \(mesajSecond)"
        
        uyari(mesajBaslik: "Tebrikler", mesaj: "Mesajınız başarıyla alındı...")
        
    }
    
    func uyari(mesajBaslik: String, mesaj: String) {
        let uyari = UIAlertController(title: mesajBaslik, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        uyari.addAction(tamam)
        self.present(uyari, animated: true, completion: nil)
    }
    
  

}
