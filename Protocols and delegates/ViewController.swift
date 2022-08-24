//
//  ViewController.swift
//  Protocols and delegates
//
//  Created by Apple on 22/06/22.
//

import UIKit

class ViewController: UIViewController,dataPass {
    
    

    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.delegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func data(name: String, id: String) {
        lblName.text = name
        lblId.text = id
    }

}

