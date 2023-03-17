//
//  SecondViewController.swift
//  PassData
//
//  Created by Shubham Jitiya on 16/03/23.
//

import UIKit

protocol UserInfo: AnyObject {
    func registerUser(name: String, address: String, city: String) -> Void
}

class SecondViewController: UIViewController {

    @IBOutlet var etName: UITextField!
    @IBOutlet var etAddress: UITextField!
    @IBOutlet var etCity: UITextField!
    weak var delegate: UserInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSave(_ sender: UIButton) {
        delegate?.registerUser(name: etName.text ?? "NA", address: etAddress.text ?? "NA", city: etCity.text ?? "NA")
    }
}
