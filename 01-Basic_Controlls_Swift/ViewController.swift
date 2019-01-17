//
//  ViewController.swift
//  01-Basic_Controlls_Swift
//
//  Created by DeEp KapaDia on 17/01/19.
//  Copyright © 2019 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time=Timer()
    var i:Int=0;
    
    
    //Switch Outlets
    @IBOutlet weak var LBL_Switch: UILabel!
    @IBOutlet weak var Switch: UISwitch!
    
    
    //Stepper Outlets
    @IBOutlet weak var LBL_Stepper: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    
    
    //ProgressBar Outlets
    @IBOutlet weak var LBL_ProgressBar: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    
    //Slider Outlets
    @IBOutlet weak var LBL_Slider: UILabel!
    @IBOutlet weak var Slider: UISlider!
    
    //Activity Indicator Outlet
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Indicator Hide On load Code
        ActivityIndicator.isHidden = true
        ActivityIndicator.hidesWhenStopped = true
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Switch Action
    @IBAction func Switch_Action(_ sender: Any) {
        
        if Switch.isOn {
            LBL_Switch.text = "ON";
        }
        else
        {
            LBL_Switch.text = "OFF";
        }
    }
    
    //Stepper Action
    @IBAction func Stepper_Action(_ sender: Any) {
        
        LBL_Stepper.text = String(Int(Stepper.value));

        
    }

    //ProgressBar Start Action Button
    @IBAction func ProgressBar_Start_BTN(_ sender: Any) {
        
         time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true);
        
    }
    //Update ProgressBar Function
    @objc func update()
    {
        if i<100 {
            
            LBL_ProgressBar.text = String(format:"%d%",i)
            ProgressBar.progress = Float(i)/100
            i += 1;
        }
        else
        {
            time.invalidate()
        }
    }

    //Slider Action
    @IBAction func Slider(_ sender: Any) {
        
        LBL_Slider.text = String(Int(Slider.value));

    }
    
    //Activity Indicatior Action Start
    @IBAction func Activity_Start_BTN(_ sender: Any) {
        
        ActivityIndicator.isHidden=false
        ActivityIndicator.startAnimating()
        
    }
    
    //Activity Indicatior Action Stop
    @IBAction func Activity_Stop_BTN(_ sender: Any) {
        
        ActivityIndicator.stopAnimating()
        
    }
    
}

