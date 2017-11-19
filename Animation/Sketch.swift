import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var xbig : Int

    var dxbig : Int
    var xsmall : Int
    var ysmall : Int
    var dxsmall : Int
    var dysmall : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        xbig = 250
       
        
        xsmall = 0
        ysmall = 100
        dxbig = 3
        dxsmall = 4
        dysmall = 4
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        canvas.fillColor = Color.white
        
       // canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        canvas.fillColor = Color.black
        
        xbig += dxbig
        
        xsmall += dxsmall
        
        ysmall += dysmall
      
        
        
        
        
        if xbig > 400 {
            dxbig = -3
        }
        if xbig < 100 {
            dxbig = 3
        }
        
        
        
        if xsmall > 475 {
            dxsmall = -4
        }
        if xsmall < 25 {
            dxsmall = 4
        }
        if ysmall > 475 {
            dysmall = -4
        }
        if ysmall < 25 {
            dysmall = 4
        }
        
        canvas.drawShapesWithFill = false
        canvas.drawEllipse(centreX: xbig, centreY: 250, width: 200, height: 200)
        canvas.drawEllipse(centreX: xbig, centreY: 250, width: 1, height: 1)
        
        
        
        canvas.drawEllipse(centreX: xsmall, centreY: ysmall, width: 50, height: 50)
        canvas.drawEllipse(centreX: xsmall, centreY: ysmall, width: 1, height: 1)
        
        if sqrt(pow(Double(xbig - xsmall), 2) + pow(Double(250 - ysmall), 2)) < 125 {
            canvas.lineColor = Color.red
            canvas.drawLine(fromX: xbig, fromY: 250, toX: xsmall, toY: ysmall)
        
        }
        
        canvas.drawShapesWithFill = true
        
        }
    
}
