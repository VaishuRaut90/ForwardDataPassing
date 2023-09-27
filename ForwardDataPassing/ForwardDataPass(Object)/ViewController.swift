//
//  ViewController.swift
//  ForwardDataPass(Object)
//
//  Created by Mac on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var student : [Student] = []
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func movetoSVC(_ sender: Any) {
      
        let firstName = firstNameTextField.text ?? "Vaishnavi"
        let lastName  = lastNameTextField.text  ?? "Raut"
        let rollNumber = rollNumberTextField.text?.codingKey.intValue ?? 50
        
        let SecVc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let newObject = Student(firstName: firstName, lastaname: lastName, rollNumber: rollNumber)
     
        self.student.append(newObject)
        
        SecVc.container = student
        
        navigationController?.pushViewController(SecVc, animated: true)
    
    }
}

