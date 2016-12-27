//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let viewHeight = 500
let viewWidth = 400
// コンテントビューを生成
let contentView = UIView(frame: CGRect(x:0, y:0, width: viewWidth, height: viewHeight))

// 背景色を黄色に
contentView.backgroundColor = UIColor.yellow

// イメージビューを生成
var myImg = UIImage(named: "myFish")
var imgView:UIImageView

// 10個のイメージビューをコンテントビューにランダムに配置
for _ in 1...10 {
	let x = arc4random_uniform(UInt32(viewWidth))
	let y = arc4random_uniform(UInt32(viewHeight))
	imgView = UIImageView(image: myImg)
	imgView.center = CGPoint(x: Int(x), y: Int(y))
	contentView.addSubview(imgView)
	
}

// コンテントビューをPlaygroundのliveViewにセット
PlaygroundPage.current.liveView = contentView

