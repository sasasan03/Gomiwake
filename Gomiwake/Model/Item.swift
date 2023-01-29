//
//  Itemproperty.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/22.
//

import Foundation

struct Item: Identifiable{
    var id = UUID()
    var name: String
    var isSuccessOrFailure: Bool
}
