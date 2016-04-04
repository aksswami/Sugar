import UIKit

public extension UIView {
    class func nib(name: String = "", inBundle bundle: NSBundle = NSBundle.mainBundle()) -> UINib {
        return UINib(nibName: name == "" ? String(self) : name, bundle: bundle)
    }
    
    class func loadFromNib(forOwner owner: AnyObject?) -> UIView? {
        return nib().instantiateWithOwner(owner, options: nil)[0] as? UIView
    }
}