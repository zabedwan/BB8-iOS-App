//
//  ViewController.swift
//  HouseAlarm
//
//  Created by Roberto Viola on 06/12/14.
//  Copyright (c) 2014 Roberto Viola. All rights reserved.
//

import UIKit
import Foundation

var host = "192.168.4.1"
var username = "root"
var password = ""
var session = NMSSHSession(host: host, andUsername: username)


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Open_Connection() {
        session.connect()
        if session.connected == true {
            session.authenticateByPassword(password)
            if session.authorized == true {
                NSLog("Authentication succeeded")
            }
            let error = NSErrorPointer()
            var response2: String!
            do {
                response2 = try session.channel.execute("ls")
                try session.channel.execute("cd /sys/class/gpio; bash /root/test.sh")
                
            } catch let error1 as NSError {
                error.memory = error1
                response2 = nil
            }
            NSLog("List of my files %@", response2)
        }
    }
    
    
    @IBAction func PerformTest2() {
        session.connect()
        if session.connected == true {
            session.authenticateByPassword(password)
        }
        let error = NSErrorPointer()
        do {
            try session.channel.execute("cd /sys/class/gpio; bash /root/test2.sh")
            
        } catch let error1 as NSError {
            error.memory = error1
        }
    }
    
    
    
    @IBAction func PerformTest3() {
        let host = "192.168.4.1"
        let username = "root"
        let password = ""
        let session = NMSSHSession(host: host, andUsername: username)
        session.connect()
        if session.connected == true {
            session.authenticateByPassword(password)
            if session.authorized == true {
                NSLog("Authentication succeeded")
            }
            let error = NSErrorPointer()
            do {
                try session.channel.execute("cd /sys/class/gpio; bash /root/test3.sh")
                
            } catch let error1 as NSError {
                error.memory = error1
            }
        }
        session.disconnect()
    }
    
    @IBAction func PerformTest4() {
        let host = "192.168.4.1"
        let username = "root"
        let password = ""
        let session = NMSSHSession(host: host, andUsername: username)
        session.connect()
        if session.connected == true {
            session.authenticateByPassword(password)
            if session.authorized == true {
                NSLog("Authentication succeeded")
            }
            let error = NSErrorPointer()
            do {
                try session.channel.execute("cd /sys/class/gpio; bash /root/test4.sh")
                
            } catch let error1 as NSError {
                error.memory = error1
            }
        }
        session.disconnect()
    }
    
    @IBAction func PerformTest5() {
        let host = "192.168.4.1"
        let username = "root"
        let password = ""
        let session = NMSSHSession(host: host, andUsername: username)
        session.connect()
        if session.connected == true {
            session.authenticateByPassword(password)
            if session.authorized == true {
                NSLog("Authentication succeeded")
            }
            let error = NSErrorPointer()
            do {
                try session.channel.execute("cd /sys/class/gpio; bash /root/test5.sh")
                
            } catch let error1 as NSError {
                error.memory = error1
            }
        }
        session.disconnect()
    }
    
    
    
}

