//
//  ViewController.swift
//  AlertControllerDemo
//
//  Created by Mukund-iMac on 1/19/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnShowAlertStyleTapped(sender: AnyObject) {
        
        let objAlertController = UIAlertController(title: "Hey Pals !!", message: "We are learning to use UIAlertController in Swift.Its Alert Style.", preferredStyle: UIAlertControllerStyle.Alert)
        
        let objAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:
            {Void in self.lblMessage.text = "HEY!! You handled an Action for Alert."})
        objAlertController.addAction(objAction)
        
        presentViewController(objAlertController, animated: true, completion: nil)
    }
    
    @IBAction func btnShowActionSheetStyleTapped(sender: AnyObject) {
        
        let objAlertController = UIAlertController(title: "Hey Pals !! ", message: "We are learning to use UIAlertController in Swift. Its ActionSheet style. ", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let objAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:
            {Void in self.lblMessage.text = "HEY!! You handled an Action for ActionSheet."})
        objAlertController.addAction(objAction)
        
        presentViewController(objAlertController, animated: true, completion: nil)
    }
}

