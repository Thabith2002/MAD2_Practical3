//
//  ViewController.swift
//  Practical3
//
//  Created by Mohamed Thabith on 5/11/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: Any) {
        print("Button has been clicked")
        myLbl.text = "Button has been clicked"
    }
    
    @IBOutlet weak var myLbl: UILabel!
    
    
    @IBOutlet weak var txtField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtField.resignFirstResponder()
        myLbl.text = textField.text
        return true
    }
}

