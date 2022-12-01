//
//  ClipboardApp.swift
//  Clipboard
//
//  Created by Thomas Bernard on 29/11/2022.
//

import SwiftUI
import Foundation

@main
struct ClipboardApp: App {
    
    @NSApplicationDelegateAdaptor var delegate: AppDelegate
    
    //@State var currentItem: String = delegate.lastItem
    
    var lastChangeCount: Int = 0
    var history : [String] = [""]
    
    
    var body: some Scene {
        
        let pasteboard = NSPasteboard.general
        
        MenuBarExtra("1", systemImage: "\(self.delegate.history.capacity).circle") {
            
            Button(delegate.lastItem){
                pasteboard.clearContents()
                pasteboard.setString(delegate.lastItem, forType: .string)
            }
            
            let read : String = pasteboard.pasteboardItems?.first?.string(forType: .string) ?? ""
            
            ForEach(0..<self.delegate.history.capacity){ item in
                Button(self.delegate.history[item]) {
                    pasteboard.clearContents()
                    pasteboard.setString(self.delegate.history[item], forType: .string)
                    
                    //history.insert(history[item], at: 0)
                }
            }
            
            Divider()
            
            Button("Reset"){
                pasteboard.clearContents()
            }
            
            Button("Preferences"){
                
            }
            
            Button("About"){
                
            }

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
        
        
    }
}


