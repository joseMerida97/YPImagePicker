//
//  RulerView.swift
//  YPImagePicker
//
//  Created by Santiago Mendoza on 6/10/23.
//  Copyright © 2023 Yummypets. All rights reserved.
//

import UIKit

class RulerView: UIView {
    public var startTimeLabel = UILabel()
    public var endTimeLabel = UILabel()

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        
        let markerHeight: CGFloat = 10.0

        let startMarkerXPosition: CGFloat = 0
        let endMarkerXPosition: CGFloat = rect.width

        drawTimeMarkerLine(atX: startMarkerXPosition, height: markerHeight)
        drawTimeMarkerLine(atX: endMarkerXPosition, height: markerHeight)

        startTimeLabel.text = ""
        endTimeLabel.text = ""
        
        startTimeLabel.textColor = .white
        endTimeLabel.textColor = .white

        addSubview(startTimeLabel)
        addSubview(endTimeLabel)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        startTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        endTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        startTimeLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        startTimeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        endTimeLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        endTimeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

    private func drawTimeMarkerLine(atX xPosition: CGFloat, height: CGFloat) {
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.white.cgColor)
        context?.setLineWidth(1.0)
        context?.move(to: CGPoint(x: xPosition, y: height))
        context?.addLine(to: CGPoint(x: xPosition, y: 0))
        context?.strokePath()
    }
}
