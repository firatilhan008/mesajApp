//
//  ViewController.swift
//  mesajApp
//
//  Created by Fırat İlhan on 8.11.2022.
// fırat

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var surNameText: UITextField!
    
    @IBOutlet weak var mesajText: UITextField!
    
    var name = ""
    var surName = ""
    var mesaj = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("mesajApp")
    }

    @IBAction func mesajGonder(_ sender: Any) {
        if nameText.text == "" {
            uyari(mesajBaslik: "Uyarı", mesaj: "Adınızı Giriniz!!!")
        } else if surNameText.text == "" {
            uyari(mesajBaslik: "Uyarı", mesaj: "Soyadınızı Giriniz!!!")
        } else if  mesajText.text == "" {
            uyari(mesajBaslik: "Uyarı", mesaj: "Mesajınızı Giriniz...")
        } else {
            name = nameText.text!
            surName = surNameText.text!
            mesaj = mesajText.text!
            performSegue(withIdentifier: "toSecondVc", sender: nil)
        }
    }
    
    func uyari(mesajBaslik: String, mesaj: String) {
        let uyari = UIAlertController(title: mesajBaslik, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        uyari.addAction(tamam)
        self.present(uyari, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVc" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.nameSecond = name
            destinationVC.surNameSecond = surName
            destinationVC.mesajSecond = name
        }
    }
    
    
}

