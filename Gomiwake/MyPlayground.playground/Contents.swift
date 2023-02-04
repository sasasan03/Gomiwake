import UIKit
import SwiftUI
//import PlaygroundSupport // playground用のImport

//CGFloat：座標、画像のサイズなどの数値が入る型....Double  Float←CGFloatと何が違うのか？
let cGFloat: CGFloat
cGFloat = CGFloat(10)

//CGPoint：座標を表す型。x:,y:のプロパティを持っている。....CGFloat
let cgPoint = CGPoint(x: 10, y: 10) //初期値はFloat

//？？？CGSize：そのままのサイズを表す型。width,heightのプロパティを持つ。...CGFloat
let cGSize = CGSize(width: 20, height: 20) //初期値はFloat 高さ20の横20をとる

//CGRect：座標(CGPoint)とサイズ(CGSize)をもつ
let cGRect = CGRect(x: -2, y: 2, width: -10, height: 10)

//let aaa = CGSize(width: 20, height: 20)
//let bbb = CGFloat()
//let a: Float = 1.23456789123456789 //doubleは２周目の8まで。floatは１周め8まで

//----------------------------playgroundsupportを使ったテスト
//let frame = CGRect(x: 0, y: 0, width: 320, height: 320)
//let image = UIImage(named: "batsu")
//let imageView = UIImageView(frame: frame)
//imageView.contentMode = .scaleAspectFit
//imageView.image = image
//
//// 表のスレッドの処理が終わっても、別スレッドの処理を継続可能とする
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//// アシスタントエディタ上に、対象のビューを表示
//PlaygroundPage.current.liveView = imageView

//---------------------------------ミニアプリ（要素をシャッフルして取り出す実験）
//var elements = ["りんご","なし","オレンジ","パイナップル"]
//var emptyArray = [] as [String]
//var aaa = elements.shuffled()
//aaa.forEach { string in
//    print(string)
//}

var array = ["a","b","c"].shuffled()
print(array)
array.first
array.removeFirst()
//class a {
//let b: Int
//let c: Int
//    init(d: Int, e:Int){
//        self.b = d
//        self.c = e
//    }
//}
//a(d: 3, e: 4)
//var fruits = ["りんご","ぶどう","もも"]
//fruits.remove(at: 0)
//print(fruits)
//var shuffleFruits = fruits.shuffled()
//print(shuffleFruits)
//
////----------------------------------要素のシャッフルを実戦に近づけた実験
//struct Item: Identifiable{
//    var id = UUID()
//    var name: String
//    var isSuccessOrFailure: Bool
//}
//
//private var items = [
//    Item(name: "a",  isSuccessOrFailure: false),
//    Item(name: "b",  isSuccessOrFailure: false),
//    Item(name: "c",  isSuccessOrFailure: false),
//    Item(name: "d",  isSuccessOrFailure: true),
//    Item(name: "e",  isSuccessOrFailure: false)
//]
//items.shuffle()
////シャッフルして配列を削除する。
////print(type(of: items.first))//optional<Itemproperty>
//var shufflseItem = items.shuffled()
//shufflseItem.remove(at: 0)
////print(shufflseItem)
//shufflseItem.remove(at: 0)
////print(shufflseItem)
//shufflseItem.remove(at: 0)
//shufflseItem.remove(at: 0)
//shufflseItem.remove(at: 0)
////shufflseItem.remove(at: 0)//allzeroからremoveでクラッシュ
//print(shufflseItem)
//
//var aaa = shufflseItem.count
//print(aaa)
//var bbb = shufflseItem[aaa - 1]
//print(bbb)
//
//var hoge = ["a","b","c"]
//hoge.remove(at: 1)
//print(hoge)


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

