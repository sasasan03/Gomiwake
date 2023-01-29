//
//  DragGestrueModel.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/29.
//

import Foundation
import SwiftUI

struct DragDestureModel {
    
    @State private var isCorrected = false
    @State private var isWronged = false
    @State private var items = [
        Item(name: "guitar", isSuccessOrFailure: false),
        Item(name: "jitensya", isSuccessOrFailure: false),
        Item(name: "kamikuzu", isSuccessOrFailure: false),
        Item(name: "kutsushita", isSuccessOrFailure: true),
        Item(name: "namagomi", isSuccessOrFailure: false)
    ]
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
    //                         bangou -= 1
                        offset = CGSize(width: 0,height: 0)
                    }
                }
            }
        }

}
 
