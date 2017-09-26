//
//  DatePickerVc.swift
//  DatePicker
//
//  Created by appinventiv on 26/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class DatePickerVc: UIViewController {
    //--------------variable Declaration------------//
     let datePicker = UIDatePicker()
    
    //-------------Outlets---------//
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.addTarget(self,
                             action: #selector(DatePickerVc.datePickerAction(_:)),
                             for: .valueChanged)
        dobTextField.inputView = datePicker
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        super.viewDidLoad()
    }
    @objc func datePickerAction(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        let strDate = dateFormatter.string(from: sender.date)
        self.dobTextField.text = strDate
    }
    
  //----------------Action Button--------//
    @IBAction func loginBtn(_ sender: UIButton) {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
