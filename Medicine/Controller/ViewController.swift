//
//  ViewController.swift
//  Medicine
//
//  Created by Noah Woodward on 3/6/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
   
     @IBOutlet weak var verifyTextLabel: UILabel!
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        hideLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    func hideLabel() {
        
        verifyTextLabel.isHidden = true
    }
   
    @IBAction func authenticateButton(_ sender: UIButton) {
        let context : LAContext = LAContext()
        
        //checks for touch id on the users iPhone
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Verify yourself", reply: { (issuccessfull , error) in
                DispatchQueue.main.async{
                if issuccessfull {
                  
                    self.verifyTextLabel.text = "Success!"
                    self.performSegue(withIdentifier: "goToMedicine", sender: self)
                   
                    
                }
                
                else{
                   verifyTextLabel.isHidden = false
                    self.verifyTextLabel.text = "Failure"
                    
                }
                }
            })
        }
        else{
            DispatchQueue.main.async {
            self.verifyTextLabel.text = "FingerID Not available"
            }
        }
    }
    
   

    }
    



