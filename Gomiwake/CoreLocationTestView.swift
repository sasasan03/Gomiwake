//
//  CoreLocationTestView.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/02/04.
//

import SwiftUI

struct CoreLocationTestView: View {
    
    let cGPoint = CGPoint(x: 30, y: 30)
    @State private var center = CGPoint(x: 0, y: 0)
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Image(systemName: "music.note")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50,height: 50)
                    .position(x: proxy.size.width / 2, y: proxy.size.height / 2)
                Text("x: \(proxy.size.width / 2)")
                Text("y: \(proxy.size.height / 2)")
            }
        }
    }
}

struct CoreLocationTestView_Previews: PreviewProvider {
    static var previews: some View {
        CoreLocationTestView()
    }
}
