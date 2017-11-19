import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var xbig : Int

    
    var xsmall : Int
    var ysmall : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        xbig = 0
       
        
        xsmall = 0
        ysmall = 100
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        canvas.fillColor = Color.black
        xbig += 1
      
        xsmall += 2
        ysmall += 2
        canvas.drawShapesWithFill = false
        canvas.drawEllipse(centreX: xbig, centreY: 250, width: 200, height: 200)
        canvas.drawEllipse(centreX: xbig, centreY: 250, width: 1, height: 1)
        
        
        
        canvas.drawShapesWithFill = true
    
    
    
        
    }
    
}
