//
//  StatusItemView.swift
//  WhichSpace
//
//  Created by Stephen Sykes on 30/10/15.
//  Copyright © 2020 George Christou. All rights reserved.
//

import Cocoa

class StatusItemCell: NSStatusBarButtonCell {
    var isMenuVisible = false
    
    override func drawImage(_ image: NSImage, withFrame frame: NSRect, in controlView: NSView) {
        
        let darkColor = NSColor(
            calibratedWhite: AppDelegate.darkModeEnabled ? 0.7 : 0.3,
            alpha: 1
        )
        let whiteColor = NSColor(
            calibratedWhite: AppDelegate.darkModeEnabled ? 0 : 1,
            alpha: 1
        )

        let foregroundColor = isMenuVisible ? darkColor : whiteColor
        
        let titleRect = NSRect(
            x: frame.origin.x,
            y: frame.origin.y + 3,
            width: frame.size.width,
            height: frame.size.height
        )
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.center
        
        let attributes = [
            NSAttributedString.Key.paragraphStyle: paragraphStyle,
            NSAttributedString.Key.foregroundColor: foregroundColor
        ]
        title.draw(in: titleRect, withAttributes: attributes)
    }
}
