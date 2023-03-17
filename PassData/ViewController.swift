//
//  ViewController.swift
//  PassData
//
//  Created by Shubham on 16/03/23.
//

import UIKit

class ViewController: UIViewController, UserInfo {
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblAddress: UILabel!
    @IBOutlet var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnEnterDetails(_ sender: UIButton) {
        if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as?
            SecondViewController {
            secondVC.delegate = self
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func registerUser(name: String, address: String, city: String) {
                lblName.text = name
                lblAddress.text = address
                lblCity.text = city
//              print(name, address, city)
    }
    
}

