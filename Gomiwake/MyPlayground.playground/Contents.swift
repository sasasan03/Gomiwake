import UIKit
//---------------------------------ミニアプリ（要素をシャッフルして取り出す実験）
//var elements = ["りんご","なし","オレンジ","パイナップル"]
//var emptyArray = [] as [String]
//var aaa = elements.shuffled()
//aaa.forEach { string in
//    print(string)
//}

class a {
let b: Int
let c: Int
    init(d: Int, e:Int){
        self.b = d
        self.c = e
    }
}
a(d: 3, e: 4)
var fruits = ["りんご","ぶどう","もも"]
fruits.remove(at: 0)
print(fruits)
var shuffleFruits = fruits.shuffled()
print(shuffleFruits)

//----------------------------------要素のシャッフルを実戦に近づけた実験
struct Item: Identifiable{
    var id = UUID()
    var name: String
    var isSuccessOrFailure: Bool
}

private var items = [
    Item(name: "a",  isSuccessOrFailure: false),
    Item(name: "b",  isSuccessOrFailure: false),
    Item(name: "c",  isSuccessOrFailure: false),
    Item(name: "d",  isSuccessOrFailure: true),
    Item(name: "e",  isSuccessOrFailure: false)
]
items.shuffle()
//シャッフルして配列を削除する。
//print(type(of: items.first))//optional<Itemproperty>
var shufflseItem = items.shuffled()
shufflseItem.remove(at: 0)
//print(shufflseItem)
shufflseItem.remove(at: 0)
//print(shufflseItem)
shufflseItem.remove(at: 0)
shufflseItem.remove(at: 0)
shufflseItem.remove(at: 0)
//shufflseItem.remove(at: 0)//allzeroからremoveでクラッシュ
print(shufflseItem)

var aaa = shufflseItem.count
print(aaa)
var bbb = shufflseItem[aaa - 1]
print(bbb)

var hoge = ["a","b","c"]
hoge.remove(at: 1)
print(hoge)


//func aaa() {
//    guard items.count >= 0 else {//returnはfuncの中でじゃないと使えない？Return invalid outside of a func
//        return
//    }
//    var firstItem = items.first//一つ目の配列を取り出す
//    firstItem
//    print(type(of: firstItem))
////    for item in shuffleItems {
////        print(item)
////    }
//}


//------------------------------------------配列操作について勉強
//print(items.count)//5
//print(type(of: items))//Array<Itemproperty>
//print(items[0].isSuccessOrFailure)//false
//let aaa = items.filter { Itemproperty in
//    items[0].isSuccessOrFailure || items[1].isSuccessOrFailure || items[2].isSuccessOrFailure || items[4].isSuccessOrFailure
//}//5times false
//print(type(of: aaa))//Array<Itemproperty
//items.forEach { Itemproperty in
//    print(Itemproperty)
//}

