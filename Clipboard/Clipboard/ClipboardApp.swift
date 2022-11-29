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
        
        MenuBarExtra(currentNumber, systemImage: "\(currentNumber).circle") {
            Button("One") {
                currentNumber = "1"
            }
            Button("Two") {
                currentNumber = "2"
            }
            Button("Three") {
                currentNumber = "3"
            }
            Divider()
            
            Button("Reset"){
                
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
