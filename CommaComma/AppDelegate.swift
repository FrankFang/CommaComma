//
//  AppDelegate.swift
//  CommaComma
//
//  Created by FrankFang on 14-6-7.
//  Copyright (c) 2014年 FrankFang. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    
    @IBOutlet var convertButton : NSButton
    
    var preferences  = NSUserDefaults.standardUserDefaults()
    
    @IBAction func convertFromFullToHalf(sender : AnyObject) {
//        var original:String = originalText.string
//        
//        var result = original
//        if preferences.boolForKey("singleQuote") {
//            result = result.stringByReplacingOccurrencesOfString("‘", withString: "'")
//            result = result.stringByReplacingOccurrencesOfString("’", withString: "'")
//        }
//        if preferences.boolForKey("exclamation") {
//            result = result.stringByReplacingOccurrencesOfString("！", withString: "!")
//        }
//        if preferences.boolForKey("semicolon") {
//            result = result.stringByReplacingOccurrencesOfString("；", withString: ";")
//        }
//        if preferences.boolForKey("colon") {
//            result = result.stringByReplacingOccurrencesOfString("：", withString: ":")
//        }
//        if preferences.boolForKey("period") {
//            result = result.stringByReplacingOccurrencesOfString("。", withString: ".")
//        }
//        if preferences.boolForKey("comma") {
//            result = result.stringByReplacingOccurrencesOfString("，", withString: ",")
//        }
//        if preferences.boolForKey("doubleQuote") {
//            result = result.stringByReplacingOccurrencesOfString("“", withString: "\"")
//            result = result.stringByReplacingOccurrencesOfString("”", withString: "\"")
//        }
//        if preferences.boolForKey("question") {
//            result = result.stringByReplacingOccurrencesOfString("？", withString: "?")
//        }
//        if preferences.boolForKey("bracket") {
//            result = result.stringByReplacingOccurrencesOfString("（", withString: "(")
//            result = result.stringByReplacingOccurrencesOfString("）", withString: ")")
//        }
//        
//        resultText.string = result
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        window.title = "CommaComma"
        
        
        var config = ["singleQuote":true,"exclamation":true,"semicolon":true,"colon":true,"period":true,"comma":true,
            "doubleQuote": true,"question": true, "bracket":false]
        
        preferences.registerDefaults(config)
        
    }
    
    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
    
}

