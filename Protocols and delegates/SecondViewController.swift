//
//  SecondViewController.swift
//  Protocols and delegates
//
//  Created by Apple on 22/06/22.
//

import UIKit

protocol dataPass {
    func data(name : String , id : String)
}

class SecondViewController: UIViewController {

    
    var delegate: dataPass?
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

                
        // Do any additional setup after loading the view.
    }
    @IBAction func submitBtn(_ sender: Any) {
       
        delegate?.data(name: txtName.text!, id: txtId.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
}
