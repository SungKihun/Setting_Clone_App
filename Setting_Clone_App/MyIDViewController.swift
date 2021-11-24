//
//  MyIDViewController.swift
//  Setting_Clone_App
//
//  Created by 성기훈 on 2021/11/24.
//

import UIKit

class MyIDViewController: UIViewController {

    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        
        textFieldDidChange(sender: emailTextField)
    }
    
    @objc func textFieldDidChange(sender: UITextField) {
        if sender.text?.isEmpty == true {
            nextButton.isEnabled = false
        } else {
            nextButton.isEnabled = true
        }
    }
    
    @IBAction func doCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
