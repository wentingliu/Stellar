//Copyright (c) 2016
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

public protocol BasicConfigurable: BasicChainable {
    associatedtype BasicConfigurableType
    
    func duration(_ d: CFTimeInterval) -> BasicChainableType
    func easing(_ type: TimingFunctionType) -> BasicChainableType
    func delay(_ d: CFTimeInterval) -> BasicChainableType
    func autoreverses() -> BasicChainableType
    func repeatCount(_ count: Int) -> BasicChainableType
}

extension BasicConfigurable {
    //MARK: Basic Animation configurations
    public func duration(_ d: CFTimeInterval) -> BasicConfigurableType {
        context.changeDuration(d)
        return self as! BasicConfigurableType
    }
    
    public func easing(_ type: TimingFunctionType) -> BasicConfigurableType {
        context.changeEasing(type)
        return self as! BasicConfigurableType
    }
    
    public func delay(_ d: CFTimeInterval) -> BasicConfigurableType {
        context.changeDelay(d)
        return self as! BasicConfigurableType
    }
    
    public func autoreverses() -> BasicConfigurableType {
        context.changeAutoreverses(true)
        return self as! BasicConfigurableType
    }
    
    public func repeatCount(_ count: Int) -> BasicConfigurableType {
        context.changeRepeatCount(count)
        return self as! BasicConfigurableType
    }
}
