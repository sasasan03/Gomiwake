//
//  ContentView.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingTouchView = false
    @State private var showingDragView = false
    @State private var showingHomeView = true
    
    var body: some View {
        if showingHomeView {
            NavigationStack{
                GeometryReader { proxy in
                    ZStack {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Image(systemName: "trash.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: proxy.size.width * 0.3, height: proxy.size.width * 0.3)
                                    .foregroundColor(.accentColor)
                                Spacer()
                            }
                            Spacer()
                        }
                        VStack{
                            Spacer()
                            HStack{
                                Button("おして"){
                                    showingTouchView = true
                                    showingHomeView = false
                                   
                                }
                                    .padding()
                                Button("ずらして"){
                                    showingDragView =  true
                                    showingHomeView = false
                                }
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        if showingDragView {
            DragView(showingDragView: $showingDragView,showingHomeView: $showingHomeView)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
