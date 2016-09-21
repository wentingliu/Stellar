//Copyright (c) 2016
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

public enum AnimationStyle {
    case basic
    case snap(CGFloat)
    case attachment(CGFloat,CGFloat)
    case gravity(Double)
}

extension UIView: BasicConfigurable, SnapConfigurable, AttachmentConfigurable, GravityConfigurable, StepControllable {
    
    public typealias ChainableType = UIView
    public typealias BasicChainableType = UIView
    public typealias BasicConfigurableType = UIView
    public typealias GravityConfigurableType = UIView
    public typealias AttachmentConfigurableType = UIView
    public typealias SnapConfigurableType = UIView
    
    
    //MARK: Physical Animation
    
    //Snap
    
    //Attachment
    
    //Gravity
    
    
    //MARK: StepControllable methods
    
    public func completion(_ c: @escaping () -> Void) -> UIView {
        context.changeCompletion(c)
        return self
    }
    
    //Private Context for view and layer
    public var context: AnimationContext {
        get {
            //let identifier = String(unsafeAddress(of: self.layer))
            let identifier = String(describing: Unmanaged.passUnretained(self.layer).toOpaque())
            var context = self.layer.value(forKey: identifier) as? AnimationContext
            if context == nil {
                context = AnimationContext(object: self)
                self.layer.setValue(context!, forKey: identifier)
            }
            return context!
        }
    }
}

private var AnimationContextIdentifer = "#"
