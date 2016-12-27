import UIKit

open class MyView: UIView{
	
	var imgView: UIImageView
	
	public init(img: UIImage?, frame: CGRect, color: UIColor) {

		imgView = UIImageView(image: img)
		
		super.init(frame: frame)
		backgroundColor = color
		
		let x = arc4random_uniform(UInt32(frame.width))
		let y = arc4random_uniform(UInt32(frame.height))
		imgView = UIImageView(image: img)
		imgView.center = CGPoint(x: Int(x), y: Int(y))
		self.addSubview(imgView)
		
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override open func draw(_ rect: CGRect) {
		// 円を描く
		UIColor.blue.setStroke()
		let circle = UIBezierPath(ovalIn: CGRect(x: 10, y: 10, width: Int(self.frame.width) - 20 , height: Int(self.frame.height) - 20))
		
		circle.lineWidth = 4
		circle.stroke()
	}

}



