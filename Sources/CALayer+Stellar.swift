//Copyright (c) 2016
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

extension CALayer: BasicConfigurable, SnapConfigurable, AttachmentConfigurable, GravityConfigurable, StepControllable {
    public typealias ChainableType = CALayer
    public typealias BasicChainableType = CALayer
    public typealias BasicConfigurableType = CALayer
    public typealias GravityConfigurableType = CALayer
    public typealias AttachmentConfigurableType = CALayer
    public typealias SnapConfigurableType = CALayer
    
    public func completion(_ c: () -> Void) -> CALayer {
        return self
    }
    
    //Private Context for view and layer
    public var context: AnimationContext {
        get {
            let identifier = String(describing: Unmanaged.passUnretained(self).toOpaque())

            var context = self.value(forKey: identifier) as? AnimationContext
            if context == nil {
                context = AnimationContext(object: self)
                self.setValue(context!, forKey: identifier)
            }
            return context!
        }
    }

}
