import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        x = 400
        
        // No borders
        canvas.drawShapesWithBorders = false
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        
        
        // Change position
        x += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 500, width: 50, height: 50)
        
     
        
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 800-x, centreY: 400, width: 50, height: 50)
        
        
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 300, width: 50, height: 50)
        
        
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 800-x, centreY: 200, width: 50, height: 50)
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 100, width: 50, height: 50)
        
        
    }
    
}
