//
//  AppDelegate.swift
//  CommaComma
//
//  Created by FrankFang on 14-6-7.
//  Copyright (c) 2014年 FrankFang. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var preferences  = NSUserDefaults.standardUserDefaults()
                            
    @IBOutlet var window: NSWindow
    
    @IBOutlet var upperView : NSScrollView
    @IBOutlet var lowerView : NSScrollView
    
    @IBAction func convertFromHalfToFull(sender : AnyObject) {
        var original = self.getOriginalText()
        
        var result = original
        if preferences.boolForKey("singleQuote") {
//            result = result.stringByReplacingOccurrencesOfString("‘", withString: "'")
//            result = result.stringByReplacingOccurrencesOfString("’", withString: "'")
        }
        if preferences.boolForKey("exclamation") {
            result = result.stringByReplacingOccurrencesOfString("!", withString: "！")
        }
        if preferences.boolForKey("semicolon") {
            result = result.stringByReplacingOccurrencesOfString(";", withString: "；")
        }
        if preferences.boolForKey("colon") {
            result = result.stringByReplacingOccurrencesOfString(":", withString: "：")
        }
        if preferences.boolForKey("period") {
            result = result.stringByReplacingOccurrencesOfString(".", withString: "。")
        }
        if preferences.boolForKey("comma") {
            result = result.stringByReplacingOccurrencesOfString(",", withString: "，")
        }
        if preferences.boolForKey("doubleQuote") {
//            result = result.stringByReplacingOccurrencesOfString("“", withString: "\"")
//            result = result.stringByReplacingOccurrencesOfString("”", withString: "\"")
        }
        if preferences.boolForKey("question") {
            result = result.stringByReplacingOccurrencesOfString("?", withString: "？")
        }
        if preferences.boolForKey("bracket") {
            result = result.stringByReplacingOccurrencesOfString("(", withString: "（")
            result = result.stringByReplacingOccurrencesOfString(")", withString: "）")
        }
        
        self.fillResultText(result)
    }
    
    func getOriginalText(Void) -> String{
        return self.upperView.contentView.documentView.string
    }
    
    func fillResultText(result: String) -> Bool{
        if let view = lowerView.contentView.documentView as? NSTextView{
            view.string = result
            return true
        }else{
            return false
        }
    }
    
    
    @IBAction func convertFromFullToHalf(sender : AnyObject) {
        var original = self.getOriginalText()
        
        var result = original
        if preferences.boolForKey("singleQuote") {
            result = result.stringByReplacingOccurrencesOfString("‘", withString: "'")
            result = result.stringByReplacingOccurrencesOfString("’", withString: "'")
        }
        if preferences.boolForKey("exclamation") {
            result = result.stringByReplacingOccurrencesOfString("！", withString: "!")
        }
        if preferences.boolForKey("semicolon") {
            result = result.stringByReplacingOccurrencesOfString("；", withString: ";")
        }
        if preferences.boolForKey("colon") {
            result = result.stringByReplacingOccurrencesOfString("：", withString: ":")
        }
        if preferences.boolForKey("period") {
            result = result.stringByReplacingOccurrencesOfString("。", withString: ".")
        }
        if preferences.boolForKey("comma") {
            result = result.stringByReplacingOccurrencesOfString("，", withString: ",")
        }
        if preferences.boolForKey("doubleQuote") {
            result = result.stringByReplacingOccurrencesOfString("“", withString: "\"")
            result = result.stringByReplacingOccurrencesOfString("”", withString: "\"")
        }
        if preferences.boolForKey("question") {
            result = result.stringByReplacingOccurrencesOfString("？", withString: "?")
        }
        if preferences.boolForKey("bracket") {
            result = result.stringByReplacingOccurrencesOfString("（", withString: "(")
            result = result.stringByReplacingOccurrencesOfString("）", withString: ")")
        }
        
        self.fillResultText(result)
    }
    
    var config = ["singleQuote":true,"exclamation":true,"semicolon":true,"colon":true,"period":true,"comma":true,
        "doubleQuote": true,"question": true, "bracket":false]
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        preferences.registerDefaults(config)
    }
    
    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
    
}

