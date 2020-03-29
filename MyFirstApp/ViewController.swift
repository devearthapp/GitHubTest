//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Murat ÖZTÜRK on 28.03.2020.
//  Copyright © 2020 Murat ÖZTÜRK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var score: UISlider!
    
    @IBOutlet weak var loding: UIActivityIndicatorView!
    
    @IBOutlet weak var timelabel: UILabel!
    
    var timer = Timer()
   var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
          counter = 10
        timelabel.text="Timer : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction) , userInfo: nil, repeats: true)
        
        

        
        
        
    }
    
    @objc func timerFunction()
    {
        
        
        timelabel.text="Timer : \(counter)"
        counter -= 1
        
        if counter == 0 {
            
            timer.invalidate()
            
            timelabel.text="Time is Over ! "
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    @IBAction func switchKey(_ sender: Any) {

        loding.startAnimating()
        
        if(imageView.image == UIImage(named: "fixapp")){
            
            label.text = "EarthApp"
            
            
            imageView.image = UIImage(named: "earthapp")
            
        }else{
            imageView.image = UIImage(named: "fixapp")
            label.text = "FixApp"
            
        }
        
    }
    @IBAction func stepperButton(_ sender: Any) {
        
        
        
    }
    @IBAction func sliderBar(_ sender: Any) {
        
       
        
        
        let currentValue = Int(score.value)
        
        label.text = String (currentValue)
    }
    
    @IBAction func buttonClicket(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error!", message: "Cannot Use That", preferredStyle: UIAlertControllerStyle.alert)
        
        let okbutton = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        
        alert.addAction(okbutton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

