import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var direction : Bool = true
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = canvas.height / 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        if direction == true {
            x += 1
        } else {
            x -= 1
        }
        y = Int(sin(Double(x) / 20) * 40) + canvas.height / 2
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 10, height: 10)
        
        if x > canvas.width || x < 0 {
            direction = !direction
            
            canvas.fillColor = Color(hue: random(from: 0, toButNotIncluding: 361), saturation: 100, brightness: 100, alpha: 100)
        }
    }
    
}
