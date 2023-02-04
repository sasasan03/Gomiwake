//
//  DragTest.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/02/04.
//

import SwiftUI

struct DragTest: View {
    @State var position:CGSize = CGSize(width: 0, height: 0)
    
    var drag: some Gesture {
        DragGesture()
            .onChanged{ value in
                self.position = CGSize(
                    width: value.startLocation.x + value.translation.width,
                    height: value.startLocation.y + value.translation.height
                )
            }
            .onEnded{ value in
                self.position = CGSize(
                    width: value.startLocation.x + value.translation.width,
                    height: value.startLocation.y + value.translation.height
                )
            }
    }
        
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Image(systemName: "cross.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .position(x: position.width, y: position.height)
                    .gesture(drag)
                Text("x: \(position.width)")
                Text("y:\(position.height)")
            }
        }
    }
}
struct DragTest_Previews: PreviewProvider {
    static var previews: some View {
        DragTest()
    }
}
