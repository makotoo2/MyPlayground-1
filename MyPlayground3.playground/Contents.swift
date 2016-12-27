//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// イメージを生成
var myImg = UIImage(named: "myFish")

// MyViewクラスからコンテントビューを生成
let contentView = MyView(img: myImg, frame: CGRect(x:0, y:0, width:400, height:500), color: UIColor.yellow)

PlaygroundPage.current.liveView = contentView
