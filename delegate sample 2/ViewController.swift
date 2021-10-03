//
//  ViewController.swift
//  delegate sample 2
//
//  Created by Visakh D on 22/09/21.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate   {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func secondVCbutton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier:"SecondViewController") as? SecondViewController
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
      
    }
    
    
    func showData(data: String) {
        self.textLabel.text = data
    }
    
}

