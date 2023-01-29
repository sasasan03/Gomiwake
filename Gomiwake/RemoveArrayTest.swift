//
//  RemoveArrayTest.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/26.
//

import SwiftUI

struct RemoveArrayTest: View {
    
    @State private var array = ["a","b","c","d","e"]
    @State private var shuffleArray2: [String] = []
    @State var firstItem = ""
    func shuffleArray() -> [String] {
        shuffleArray2 = array.shuffled()
        print(#function)
        print(">>>6", shuffleArray2,firstItem)
        return shuffleArray2
    }
    var body: some View {
        VStack{
            Text(firstItem)
                .onAppear{
                    print(">>>1", shuffleArray2,firstItem)
                  firstItem = shuffleArray().first ?? "nil"
                    print(">>>2", shuffleArray2,firstItem)
                }
                
            Button {
                print(">>>3", shuffleArray2,firstItem)
                shuffleArray2.removeFirst()
                print(">>>4", shuffleArray2,firstItem)
                firstItem = shuffleArray2.first ?? "nil"
                print(">>>5", shuffleArray2,firstItem)
            } label: {
                Text("削除")
            }
        }
    }
    
//
//    func shuffleFirstArray() -> String {
//        firstItem = shuffleArray().first ?? "nil"
////        shuffleItems.append(contentsOf: array.shuffled())
//       print("firstItem: \(firstItem)")
//        return firstItem
//    }
}

struct RemoveArrayTest_Previews: PreviewProvider {
    static var previews: some View {
        RemoveArrayTest()
    }
}
