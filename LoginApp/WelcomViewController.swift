//
//  WelcomViewController.swift
//  LoginApp
//
//  Created by автосалон on 27.01.2023.
//

import UIKit

class WelcomViewController: UIViewController {
    
    @IBOutlet var welcomLabelText: UILabel!
    
    var welcomLabel: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabelText.text = welcomLabel
    }
    

    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
}
