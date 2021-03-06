//
//  SCSFactoryAxis.swift
//  SciChartSwiftDemo
//
//  Created by Mykola Hrybeniuk on 6/2/16.
//  Copyright © 2016 SciChart Ltd. All rights reserved.
//

import Foundation
import SciChart

class SCSFactoryAxis {
    
    static func createDefaultNumericAxis(withAxisStyle axisStyle: SCIAxisStyle, axisId: String, isVisible: Bool = true) -> SCIAxis2DProtocol {
        let axis = SCINumericAxis()
        axis.axisId = axisId
        axis.style = axisStyle
        axis.isVisible = isVisible
        let valueYMin: Float = 0.1
        let valueYMax: Float = 0.1
        axis.autoRange = .once
        axis.growBy = SCIFloatRange(min: SCIGeneric(valueYMin), max: SCIGeneric(valueYMax))
        
        return axis
    }
    
    static func createDefaultDateTimeAxis(withAxisStyle axisStyle: SCIAxisStyle, axisId: String) -> SCIAxis2DProtocol {
        let axis = SCIDateTimeAxis()
        axis.style = axisStyle
        axis.axisId = axisId
        axis.textFormatting = "dd/MM/yyyy"
        let valueXMin: Float = 0.1
        let valueXMax: Float = 0.1
        axis.growBy = SCIDoubleRange(min: SCIGeneric(valueXMin), max: SCIGeneric(valueXMax))
        return axis
    }
    
    static func createCategoryDateTimeAxis(withAxisStyle axisStyle: SCIAxisStyle, axisId: String) -> SCIAxis2DProtocol {
        
        let axis = SCICategoryDateTimeAxis()
        axis.style = axisStyle
        axis.axisId = axisId
        let valueXMin: Float = 0.1
        let valueXMax: Float = 0.1
        axis.growBy = SCIDoubleRange(min: SCIGeneric(valueXMin), max: SCIGeneric(valueXMax))
        return axis
    }
    
    static func createCategoryNumericAxis(withAxisStyle axisStyle: SCIAxisStyle, axisId: String) -> SCIAxis2DProtocol {
        
        let axis = SCICategoryNumericAxis()
        axis.style = axisStyle
        axis.axisId = axisId
        let valueXMin: Float = 0.1
        let valueXMax: Float = 0.1
        axis.growBy = SCIDoubleRange(min: SCIGeneric(valueXMin), max: SCIGeneric(valueXMax))
        return axis
    }
    
}
