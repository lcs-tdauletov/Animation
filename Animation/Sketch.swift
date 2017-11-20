import Foundation


class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    var direction: Bool = true
    var color: Color = .black
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = sin(x) * 100 + Double(canvas.height / 2)
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        if x > Double(canvas.width) || x < 0 {
            direction = !direction
        
        if direction {
            x += 1
        } else {
            x -= 1
        }
        y = sin(x / 20) * 70 + Double(canvas.height / 2)
        
        
        canvas.fillColor = color
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 20, height: 20)
        
    }
}
}
