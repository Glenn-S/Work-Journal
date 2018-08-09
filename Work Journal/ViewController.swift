//
//  ViewController.swift
//  Work Journal
//
//  Created by Glenn Skelton on 2018-08-08.
//  Copyright © 2018 Glenn Skelton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // extract or give information to
    @IBOutlet weak var firstNameLbl: UITextField!
    @IBOutlet weak var lastNameLbl: UITextField!
    @IBOutlet weak var emailLbl: UITextField!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var warningLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func registerUser(_ sender: UIButton) {
        let firstName: String? = firstNameLbl.text!;
        let lastName: String? = lastNameLbl.text!;
        let email: String? = emailLbl.text!;
        
        if (firstName == "" || lastName == "" || email == "") {
            warningLbl.text = "Please fill in all required fields.";
        }
        else {
            // move to the next view
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "startView") as! StartViewController;
            self.present(vc, animated: true, completion: nil);
            
            // save the information for writing to a file
        }
    }
    
    

}

