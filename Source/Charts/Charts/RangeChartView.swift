//
//  RangeChartView.swift
//  Charts
//
//  Created by thinhvoxuan on 6/15/18.
//

import Foundation
import CoreGraphics

/// Chart that draws lines, surfaces, circles, ...
open class RangeChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        
        renderer = RangeChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
    }
    
    // MARK: - LineChartDataProvider
    
    open var lineData: LineChartData? { return _data as? LineChartData }
}
