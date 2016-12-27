//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// myfish.pngからイメージオブジェクトを生成
var myImg = UIImage(named: "myFish")

// ImageViewを生成
var imgView = UIImageView(image: myImg)

// liveViewにimgViewを登録
PlaygroundPage.current.liveView =  imgView
