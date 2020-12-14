//
//  ViewController.swift
//  Test Project
//
//  Created by Vince Frascello on 12/13/20.
//  Copyright © 2020 Vince Frascello. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var greetButton: UIButton!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate = self;
       
        
    }
    func createNameAlert(name: String) {
        let alertController = UIAlertController(title: "Welcome", message:
            "Hello \(name)!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Hello to you too!", style: UIAlertAction.Style.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
        
    func greet(person: String) -> String {
        return "Hello \(person)!"
        
    }
    //MARK: UITextFieldDelegate
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
    
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        
        nameLabel.text = "Hello \(textField.text!)  (Return Key)"
    
    }
    



    //MARK: Actions
    @IBAction func alertButtonPush(_ sender: UIButton) {
        if nameField.text != ""{
            createNameAlert(name: nameField.text!)
        }
        else {return}
    }
    
    @IBAction func greetButtonPush(_ sender: UIButton) {
        
        if nameField.text != ""{
            nameLabel.text = "Hello \(nameField.text!)  (Button Click)"
            
        }
        else {return}
    }
    
}


