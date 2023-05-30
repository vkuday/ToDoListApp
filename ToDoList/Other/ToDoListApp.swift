//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Volkan Kuday on 5/10/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
