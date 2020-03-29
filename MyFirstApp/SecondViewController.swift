//
//  SecondViewController.swift
//  MyFirstApp
//
//  Created by Murat ÖZTÜRK on 29/03/2020.
//  Copyright © 2020 Murat ÖZTÜRK. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonclicked(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error!", message: "Cannot Use That", preferredStyle: UIAlertControllerStyle.alert)
        
        self.present(alert, animated: true, completion: nil)
    }
    

}
