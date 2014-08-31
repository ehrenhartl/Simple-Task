//
//  AppDelegate.swift
//  meldung
//
//  Created by Leon Ehrenhart on 25.08.14.
//  Copyright (c) 2014 Leon Ehrenhart. All rights reserved.
//

import Cocoa
import Foundation


class AppDelegate: NSObject, NSApplicationDelegate, NSUserNotificationCenterDelegate {
    
    
    
    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var pop: NSPopover!

    @IBOutlet weak var input: NSTextField!
    
    @IBOutlet weak var scroll: NSScrollView!
   
   
    @IBOutlet weak var label1: NSTextField!
    
    @IBOutlet weak var label2: NSTextFieldCell!
   
    @IBOutlet weak var label3: NSTextFieldCell!
    @IBOutlet weak var label4: NSTextFieldCell!
   
    @IBOutlet weak var im: NSImageView!
    @IBOutlet weak var custom: NSButtonCell!
    

    func applicationDidFinishLaunching(aNotification: NSNotification?)
    {
    
        // Delegate für die Mitteilungszentrale setzten
        var center = NSUserNotificationCenter.defaultUserNotificationCenter();
        center.delegate = self
    }
    
    
    
    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
   
    @IBOutlet weak var date: NSDatePickerCell!
    
    @IBOutlet weak var button10: NSButtonCell!
   
    @IBOutlet weak var b_30: NSButton!
    @IBOutlet weak var b_1h: NSButton!
    @IBOutlet weak var b_2h: NSButton!
    
    @IBOutlet weak var labelout1: NSTextFieldCell!
   
    @IBOutlet weak var labelout2: NSTextField!

    @IBOutlet weak var labelout3: NSTextField!
    
    @IBOutlet weak var labelout4: NSTextField!
    
    @IBAction func btn10(sender: AnyObject) {
        
        var notification = NSUserNotification();
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 600);
        
        notification.title = "Simple Task";
        notification.informativeText = input.stringValue;
        labelout1.stringValue = "Reminder in 10 minutes: " + input.stringValue;
        notification.hasActionButton = true
        notification.otherButtonTitle = "Close"
        notification.actionButtonTitle = "wait 10 minutes"
      
        
        label1.stringValue = "saved";
        notification.soundName = NSUserNotificationDefaultSoundName
        
        
        
       // Benachrichtigung an das Nachrichtencenter übergeben.
        var center = NSUserNotificationCenter.defaultUserNotificationCenter()
        center.scheduleNotification(notification)

 
    }
    
    
       
    @IBAction func b_30clicked(sender: AnyObject) {
        
        var minutesdate: NSDate!
        var notification = NSUserNotification();
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 1800);
        
        notification.title = "Simple Task";
     
        notification.informativeText = input.stringValue;
        notification.hasActionButton = true
        notification.otherButtonTitle = "Close"
        notification.actionButtonTitle = "wait 10 minutes"
    
         labelout2.stringValue = "Reminder in 30 minutes: " + input.stringValue;
        label2.stringValue = "saved";
        notification.soundName = NSUserNotificationDefaultSoundName
        
        
        
        // Benachrichtigung an das Nachrichtencenter übergeben.
        var center = NSUserNotificationCenter.defaultUserNotificationCenter()
        center.scheduleNotification(notification)
        
        
    }
    
    @IBAction func b_1hclicked(sender: AnyObject) {
        
      
        var notification = NSUserNotification();
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 3600);
        
        notification.title = "Simple Task";
        notification.informativeText = input.stringValue;
        notification.hasActionButton = true
        notification.otherButtonTitle = "Close"
        notification.actionButtonTitle = "wait 10 minutes"
        
         labelout3.stringValue = "Reminder in 1 hour: " + input.stringValue;
        
        label3.stringValue = "saved";
        notification.soundName = NSUserNotificationDefaultSoundName
        
        
        
        // Benachrichtigung an das Nachrichtencenter übergeben.
        var center = NSUserNotificationCenter.defaultUserNotificationCenter()
        center.scheduleNotification(notification)
        
        
    }
    
    @IBAction func b_2hclicked(sender: AnyObject) {
        
      
        var notification = NSUserNotification();
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 7200);
        
        notification.title = "Simple Task";
        notification.informativeText = input.stringValue;
        notification.hasActionButton = true
        notification.otherButtonTitle = "Close"
        notification.actionButtonTitle = "wait 10 minutes"
     
         labelout4.stringValue = "Reminder in 2 hours: " + input.stringValue;
        
        label4.stringValue = "saved";
        notification.soundName = NSUserNotificationDefaultSoundName
        
        
        
        // Benachrichtigung an das Nachrichtencenter übergeben.
        var center = NSUserNotificationCenter.defaultUserNotificationCenter()
        center.scheduleNotification(notification)
        
        
    }
    
   
    
     
    func userNotificationCenter(center: NSUserNotificationCenter!,
        didActivateNotification notification: NSUserNotification!)
    {
        if notification.activationType == NSUserNotificationActivationType.Replied
        {
            println("Reply: \(notification.response.string)")
        }
        
        if notification.activationType == NSUserNotificationActivationType.ActionButtonClicked
        {
           
            var notification = NSUserNotification();
            notification.deliveryDate = NSDate(timeIntervalSinceNow: 600);
            
            notification.title = "To Do";
            notification.informativeText = input.stringValue;
            notification.hasActionButton = true
            notification.otherButtonTitle = "Close"
            notification.actionButtonTitle = "wait 10 minutes"
        
            
            notification.soundName = NSUserNotificationDefaultSoundName
            
            
            
            // Benachrichtigung an das Nachrichtencenter übergeben.
            var center = NSUserNotificationCenter.defaultUserNotificationCenter()
            center.scheduleNotification(notification)
        }
    }
    func userNotificationCenter(center: NSUserNotificationCenter!,
        shouldPresentNotification notification: NSUserNotification!) -> Bool
    {
        return true
    } 
}

