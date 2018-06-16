//
//  RangeChartDataEntry.swift
//  Charts
//
//  Created by thinhvoxuan on 6/15/18.
//

import Foundation
import CoreGraphics

open class RangeChartDataEntry: ChartDataEntry
{
    /// The size of the bubble.
    @objc open var minY = Double(0.0)
    
    public required init()
    {
        super.init()
    }
    
    /// - parameter x: The index on the x-axis.
    /// - parameter y: The value on the y-axis.
    /// - parameter minX: THe value on the minX.
    @objc public init(x: Double, y: Double, minY: Double)
    {
        super.init(x: x, y: y)
        self.minY = minY
    }
    
    /// - parameter x: The index on the x-axis.
    /// - parameter y: The value on the y-axis.
    /// - parameter minX: THe value on the minX
    /// - parameter data: Spot for additional data this Entry represents.
    @objc public init(x: Double, y: Double, minY: Double, data: AnyObject?)
    {
        super.init(x: x, y: y, data: data)
        self.minY = minY
    }
    
    /// - parameter x: The index on the x-axis.
    /// - parameter y: The value on the y-axis.
    /// - parameter minX: THe value on the minX
    /// - parameter icon: icon image
    @objc public init(x: Double, y: Double, minY: Double, icon: NSUIImage?)
    {
        super.init(x: x, y: y, icon: icon)
        self.minY = minY
    }
    
    /// - parameter x: The index on the x-axis.
    /// - parameter y: The value on the y-axis.
    /// - parameter minX: THe value on the minX
    /// - parameter icon: icon image
    /// - parameter data: Spot for additional data this Entry represents.
    @objc public init(x: Double, y: Double, minY: Double, icon: NSUIImage?, data: AnyObject?)
    {
        super.init(x: x, y: y, icon: icon, data: data)
        self.minY = minY
    }
    
    // MARK: NSCopying
    open override func copyWithZone(_ zone: NSZone?) -> AnyObject
    {
        let copy = super.copyWithZone(zone) as! RangeChartDataEntry
        copy.minY = minY
        return copy
    }
}
