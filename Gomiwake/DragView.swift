//
//  DragView.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/21.
//

import SwiftUI

struct DragView: View {
    
    @Binding var showingDragView: Bool
    @Binding var showingHomeView: Bool
    @State private var isCorrected = false
    @State private var isWronged = false
    @State private var shuffleItemArray: [Item] = []
    @State private var firstImage = ""
    @State private var items = [
        Item(name: "guitar", isSuccessOrFailure: false),
        Item(name: "jitensya", isSuccessOrFailure: false),
        Item(name: "kamikuzu", isSuccessOrFailure: false),
        Item(name: "kutsushita", isSuccessOrFailure: true),
        Item(name: "namagomi", isSuccessOrFailure: false)
    ].shuffled()
    @State var offset: CGSize = CGSize(width: 0, height: 0)
    var drag: some Gesture {
            DragGesture()
            .onChanged { value in
                offset = value.translation
            }
            .onEnded { _ in
                guard items.count >= 0 && items.count <= 4 else {
                    return
                }
                if  offset.height >  0  && items[3].isSuccessOrFailure ||
                        offset.height < 0  && items[0].isSuccessOrFailure ||
                                              items[1].isSuccessOrFailure ||
                                              items[2].isSuccessOrFailure ||
                                              items[4].isSuccessOrFailure {
                    playSoundCorrect()
                    isCorrected = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        isCorrected = false
                        items.remove(at: 0)
                        offset = CGSize(width: 0,height: 0)
                    }
                }else {
                    playSoundWrong()
                    isWronged = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        isWronged = false
                        items.remove(at: 0)
                        offset = CGSize(width: 0,height: 0)
                    }
                }
            }
        }
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ZStack{
                    Image(items[0].name)
                        .resizable()
                        .frame(
                            width: proxy.size.width * 0.5,
                            height: proxy.size.height * 0.3)
                        .scaledToFit()
                        .position(
                            x: proxy.size.width / 2 + offset.width,
                            y: proxy.size.height / 2 + offset.height
                        )
                        .gesture(drag)
                        
                }
                if isCorrected {
                    Image("batsu")
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width:  proxy.size.height * 0.5,
                            height: proxy.size.height * 0.5
                        )
                }
                if isWronged{
                    Image("maru")
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width:  proxy.size.height * 0.5,
                            height: proxy.size.height * 0.5
                        )
                }
            }
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading) {
                    Button("もどる"){
                        showingDragView = false
                        showingHomeView = true
                    }
                }
            }
        }
    }
    
}



struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView(showingDragView: Binding<Bool>.constant(false), showingHomeView: Binding<Bool>.constant(false))
    }
}
