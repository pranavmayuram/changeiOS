//
//  ViewController.swift
//  ChangeApp
//
//  Created by Pranav Mayuram on 1/17/15.
//  Copyright (c) 2015 Pranav Mayuram. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /* Do any additional setup after loading the view, typically from a nib. */
        
        /*datePicker.addTarget(self, action: Selector("dataPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "CheckMove" {
            var finaldateVC = segue.destinationViewController as SecondViewController
            finaldateVC.tempstring = makeDateString()
        }
    }
    
        
        func makeDateString() -> String {
            var dateFormatter = NSDateFormatter()
            
            dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
            dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
            
            var strDate = dateFormatter.stringFromDate(datePicker.date)
            return strDate

        
    }
    
    
    @IBAction func ButtonHit(sender: AnyObject) {
        
        var datestring: String = " "
        
        func formatADate() -> String {
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            println(s);
            datestring = s;
            return s;
        }
        
        var gooddate = formatADate()
        
        func venmocall() {
            
            /* let url = NSURL(string: "https://venmo.com/?txn=pay&recipients=ankits96&amount=0.01&note=Change%20\(datestring)&audience=friends") */
            
            let url = NSURL(string: "https://venmo.com/?txn=pay&recipients=ankits96&amount=0.01&note=Change%20\(gooddate)&audience=friends")
            let session = NSURLSession.sharedSession()
            let dataTask = session.dataTaskWithURL(url!, completionHandler: { (data: NSData!, response:NSURLResponse!,
                error: NSError!) -> Void in
                //do something
                println("Hello, it worked")
            })
            
            /*let task = NSURLSession.sharedSession().dataTaskWithURL(url!)
            task.resume() */
        }
        
        venmocall()

    }
    
    
    
    /* let urlPath: String = "http://www.google.de"
     var url: NSURL = NSURL(string: urlPath)
    var request: NSURLRequest = NSURLRequest(URL: url)
    var response: NSURLResponse?   */

}

