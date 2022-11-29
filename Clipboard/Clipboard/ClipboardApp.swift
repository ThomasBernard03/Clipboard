//
//  ClipboardApp.swift
//  Clipboard
//
//  Created by Thomas Bernard on 29/11/2022.
//

import SwiftUI

@main
struct ClipboardApp: App {
    
    @State var currentNumber: String = "1"
    

    
    var body: some Scene {
        
        let pasteboard = NSPasteboard.general
        
        
        MenuBarExtra(currentNumber, systemImage: "\(currentNumber).circle") {
            
            //let read = pasteboard.pasteboardItems?.first?.string(forType: .string)
            
            Button("currentNumber") {
                currentNumber = "1"
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
