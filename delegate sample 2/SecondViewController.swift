//
//  SecondViewController.swift
//  delegate sample 2
//
//  Created by Visakh D on 22/09/21.
//

import UIKit

protocol SecondViewControllerDelegate {
    func showData(data:String) -> Void
}


class SecondViewController: UIViewController {
    
    var delegate : SecondViewControllerDelegate!

    @IBOutlet weak var textinput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstVCbutton(_ sender: UIButton) {
        delegate.showData(data: textinput.text!)
        self.navigationController?.popViewController(animated: true)
       
    }
    
   
}
