//
//  ViewController.swift
//  MyCalc
//
//  Created by hiro on 2016/09/10.
//  Copyright (c) 2016年 hands-rec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1Button(sender: AnyObject) {
        let value = priceField.text! + "1"
        updatePriceField(value)
//        if let price = Int(value) {
//        if let price = value.toInt() {
//            priceField.text = "\(price)"
//        }
    }
    
    @IBAction func tap2Button(sender: AnyObject) {
        let value = priceField.text! + "2"
        updatePriceField(value)
    }
    
    @IBAction func tap3Button(sender: AnyObject) {
        let value = priceField.text! + "3"
        updatePriceField(value)
    }
    
    @IBAction func tap4Button(sender: AnyObject) {
        let value = priceField.text! + "4"
        updatePriceField(value)
    }
    
    @IBAction func tap5Button(sender: AnyObject) {
        let value = priceField.text! + "5"
        updatePriceField(value)
    }
    
    @IBAction func tap6Button(sender: AnyObject) {
        let value = priceField.text! + "6"
        updatePriceField(value)
    }
    
    @IBAction func tap7Button(sender: AnyObject) {
        let value = priceField.text! + "7"
        updatePriceField(value)
    }
    
    @IBAction func tap8Button(sender: AnyObject) {
        let value = priceField.text! + "8"
        updatePriceField(value)
    }
    
    @IBAction func tap9Button(sender: AnyObject) {
        let value = priceField.text! + "9"
        updatePriceField(value)
    }
    
    @IBAction func tap0Button(sender: AnyObject) {
        let value = priceField.text! + "0"
        updatePriceField(value)
    }
    
    @IBAction func tap00Button(sender: AnyObject) {
        let value = priceField.text! + "00"
        updatePriceField(value)
    }
    
    @IBAction func tapClearButton(sender: AnyObject) {
        priceField.text = "0"
    }
    
    func updatePriceField(value: String) {
        if let price = value.toInt() {
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func restart(segue :UIStoryboardSegue) {
        priceField.text = "0"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let viewController = segue.destinationViewController as! PercentViewController
        let viewController = segue.destinationViewController as PercentViewController
//        if let price = Int(priceField.text!) {
        if let price = priceField.text!.toInt() {
            viewController.price = price
        }
    }

}

