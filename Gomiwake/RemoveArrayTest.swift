//
//  RemoveArrayTest.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/26.
//

import SwiftUI

struct RemoveArrayTest: View {
    
    @State private var array = ["a","b","c","d","e"].shuffled()

    var body: some View {
        VStack{
            Text(array[0])
            Button {
                print(">>>array",array)//OK
                print(">>>array[0]:",array[0])//OK
                array.remove(at: 0)
                print(">>>array.count",array.count)
            } label: {
                Text("削除")
            }
        }
    }
}

struct RemoveArrayTest_Previews: PreviewProvider {
    static var previews: some View {
        RemoveArrayTest()
    }
}
