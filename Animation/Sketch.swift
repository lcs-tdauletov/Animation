import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 10
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        y = sin(Double(x/20)) * 40
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: Int(y), width: 10, height: 10)
        
        
        for n in stride(from: 10 , to : 500 , by: 100){
            
        }
    }
    
}
