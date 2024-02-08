//
//  ViewController.swift
//  calculator
//
//  Created by Oğuzhan Bilge on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var oneTxt: UITextField!
    @IBOutlet weak var twoTxt: UITextField!
    @IBOutlet weak var sonucLbl: UILabel!
    var sonuc = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        oneTxt.text = ""
        twoTxt.text = ""
        sonucLbl.text = "0"
    }
    
    
    @IBAction func toplama(_ sender: Any) {
        
        if let oneNumber = Int(oneTxt.text!){
        
            if let twoNumber =  Int(twoTxt.text!) {
                
                sonuc = oneNumber + twoNumber
                
                sonucLbl.text = String(sonuc)
            }
        
        }
        
        
    }
    
    @IBAction func cıkarma(_ sender: Any) {
        if let oneNumber = Int(oneTxt.text!){
        
            if let twoNumber =  Int(twoTxt.text!) {
                
                sonuc = oneNumber -  twoNumber
                
                sonucLbl.text = String(sonuc)
            }
        
        }
    }
    
    @IBAction func carpma(_ sender: Any) {
        if let oneNumber = Int(oneTxt.text!){
        
            if let twoNumber =  Int(twoTxt.text!) {
                
                sonuc = oneNumber * twoNumber
                
                sonucLbl.text = String(sonuc)
            }
        
        }
    }
    @IBAction func bolme(_ sender: Any) {
        
        if let oneNumber = Int(oneTxt.text!){
        
            if let twoNumber =  Int(twoTxt.text!) {
                
                sonuc = oneNumber / twoNumber
                
                sonucLbl.text = String(sonuc)
            }
        
        }
    }
    
}

