//
//  dispenseMedicineViewController.swift
//  Medicine
//
//  Created by Noah Woodward on 3/7/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import UIKit
import CoreBluetooth
class dispenseMedicineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func dispenseMedicineButton(_ sender: UIButton) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
