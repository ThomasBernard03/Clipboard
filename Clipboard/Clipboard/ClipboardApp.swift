//
//  ClipboardApp.swift
//  Clipboard
//
//  Created by Thomas Bernard on 29/11/2022.
//

import SwiftUI

@main
struct ClipboardApp: App {
    
    @State var currentItem: String = "1"
    @State var history : [String] = ["1", "2", "3"]
    
    var body: some Scene {
        
        let pasteboard = NSPasteboard.general
        
        MenuBarExtra("1", systemImage: "\("1").circle") {
            
            let read : String = pasteboard.pasteboardItems?.first?.string(forType: .string) ?? ""
            
            ForEach(0..<history.capacity){ item in
                Button(history[item]) {
                    pasteboard.clearContents()
                    pasteboard.setString(read, forType: .string)
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
