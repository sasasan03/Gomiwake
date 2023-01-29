//
//  GomiwakeApp.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/21.
//

import SwiftUI

@main
struct GomiwakeApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            DragView(showingDragView: Binding<Bool>.constant(false), showingHomeView: Binding<Bool>.constant(false))
        }
    }
}
