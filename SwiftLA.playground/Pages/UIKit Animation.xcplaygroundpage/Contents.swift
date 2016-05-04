import UIKit
import XCPlayground

/*:
 ## Meet-up 3/21/16
 I have changed a little bit of the setup, but the code is pretty the same the same.

 > To fully understand the __View Lifecycle__ in `UIViewController` can get overwhelming.
 > I will save the topic for the future section.
 */
let controller = UIViewController()
controller.view.backgroundColor = .redColor()

XCPlaygroundPage.currentPage.liveView = controller
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

/*:
 #### Initial set up for animation
 */

let bar = UIView(frame: CGRectMake(0, 100, 10, 50))
bar.backgroundColor = .blueColor()
controller.view.addSubview(bar)

// To avoid the duplicated codes, I pass this function into `animations` as a closure
func animate() { bar.frame.size.width = 200 }

/*:
 #### Basic animation
 Remove comments one at a time to see the animation in action
 */

UIView.animateWithDuration(0.5, animations: animate)

/* Completion block
UIView.animateWithDuration(3, animations: animate) { _ in
    UIView.animateWithDuration(0.5) {
        bar.frame.size.width = 10
    }
}
 */

/* Single option
UIView.animateWithDuration(10, delay: 0, options: .CurveEaseIn, animations: animate) { _ in
    UIView.animateWithDuration(0.5) {
        bar.frame.size.width = 10
    }
}
 */

/* Multiple options
UIView.animateWithDuration(5, delay: 0, options: [.CurveEaseIn, .CurveEaseOut], animations: animate) { _ in
    UIView.animateWithDuration(0.5) {
        bar.frame.size.width = 10
    }
}
 */

/*:
 - important:
 `OptionTypeSet` is quite a powerful feature, and a replacement of _Bitwise Operator`
 Eventhough it uses the same decoration like Array, it is actually a set. (Set has the same decoration)
 
 Data collection in Swift:
 - Array: elements can be duplicated, and must be in an order (access by index).
 - Set: elements HAVE to be unique and unordered.
 - Dictionary: Key-Value data collection, key must be unique, and value can be duplicated. Elements is unordered (access by key)

 > This is a good article to read about data colleciton in Swift: https://www.raywenderlich.com/79850/collection-data-structures-swift
 > It can be technical, but very important in Software Developement.
 */





/*:
 #### Damping Animation
 The last but not least is damping animation, which's often used in Log-in screen as wrong password rejection.
 I encourage you to experiement with different combination between `usingSpringWithDamping`, and `initialSpringVelocity` variables in order to get the behavior that you want.
 */

/*
UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.3, options: .CurveEaseIn, animations: animate, completion: nil)
 */
