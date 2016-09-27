//
//  ResultViewController.swift
//  MyCalc
//
//  Created by hiro on 2016/09/11.
//  Copyright (c) 2016年 hands-rec. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var price : Int = 0
    var percent : Int = 0
    
    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let percentValue = Float(percent) / 100
        let waribikiPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(waribikiPrice)
        resultField.text = "\(percentOffPrice)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
