//Copyright (c) 2016
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

public protocol BasicChainable: Chainable {
    associatedtype BasicChainableType
    
    func moveX(_ increment: CGFloat) -> BasicChainableType
    func moveY(_ increment: CGFloat) -> BasicChainableType
    func moveTo(_ point: CGPoint) -> BasicChainableType
    func makeColor(_ color: UIColor) -> BasicChainableType
    func makeAlpha(_ alpha: CGFloat) -> BasicChainableType
    func rotate(_ z: CGFloat) -> BasicChainableType
    func rotateX(_ x: CGFloat) -> BasicChainableType
    func rotateY(_ y: CGFloat) -> BasicChainableType
    func rotateXY(_ xy: CGFloat) -> BasicChainableType
    func makeWidth(_ width: CGFloat) -> BasicChainableType
    func makeHeight(_ height: CGFloat) -> BasicChainableType
    func makeSize(_ size: CGSize) -> BasicChainableType
    func makeFrame(_ frame: CGRect) -> BasicChainableType
    func makeBounds(_ bounds: CGRect) -> BasicChainableType
    func scaleX(_ x: CGFloat) -> BasicChainableType
    func scaleY(_ y: CGFloat) -> BasicChainableType
    func scaleXY(_ x: CGFloat, _ y: CGFloat) -> BasicChainableType
    func cornerRadius(_ radius: CGFloat) -> BasicChainableType
    func borderWidth(_ width: CGFloat) -> BasicChainableType
    func shadowRadius(_ radius: CGFloat) -> BasicChainableType
    func zPosition(_ position: CGFloat) -> BasicChainableType
    func anchorPoint(_ point: CGPoint) -> BasicChainableType
    func anchorPointZ(_ z: CGFloat) -> BasicChainableType
    func shadowOffset(_ offset: CGSize) -> BasicChainableType
    func shadowColor(_ color: UIColor) -> BasicChainableType
    func shadowOpacity(_ opacity: Float) -> BasicChainableType
    func makeTintColor(_ color: UIColor) -> BasicChainableType
    func completion(_ c: () -> Void) -> BasicChainableType
}

extension BasicChainable {
    //MARK: animation methods
    public func moveX(_ increment: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .moveX(increment))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func moveY(_ increment: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .moveY(increment))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func moveTo(_ point: CGPoint) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .moveTo(point))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeColor(_ color: UIColor) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .color(color))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeAlpha(_ alpha: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .alpha(alpha))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func rotate(_ z: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .rotate(z))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func rotateX(_ x: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .rotateX(x))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func rotateY(_ y: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .rotateY(y))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func rotateXY(_ xy: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .rotateXY(xy))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeWidth(_ width: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .width(width))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeHeight(_ height: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .height(height))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeSize(_ size: CGSize) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .size(size))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeFrame(_ frame: CGRect) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .frame(frame))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeBounds(_ bounds: CGRect) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .bounds(bounds))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func scaleX(_ x: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .scaleX(x))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func scaleY(_ y: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .scaleY(y))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func scaleXY(_ x: CGFloat, _ y: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .scaleXY(x,y))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func cornerRadius(_ radius: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .cornerRadius(radius))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func borderWidth(_ width: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .borderWidth(width))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func shadowRadius(_ radius: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .shadowRadius(radius))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func zPosition(_ position: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .zPosition(position))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func anchorPoint(_ point: CGPoint) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .anchorPoint(point))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func anchorPointZ(_ z: CGFloat) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .anchorPointZ(z))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func shadowOffset(_ offset: CGSize) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .shadowOffset(offset))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func shadowColor(_ color: UIColor) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .shadowColor(color))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func shadowOpacity(_ opacity: Float) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .shadowOpacity(opacity))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func makeTintColor(_ color: UIColor) -> BasicChainableType {
        let type = AnimationType(type: .basic, subType: .tintColor(color))
        context.addAnimationType(type)
        return self as!  BasicChainableType
    }
    
    public func completion(_ c: @escaping () -> Void) -> BasicChainableType {
        context.changeCompletion(c)
        return self as!  BasicChainableType
    }
}
