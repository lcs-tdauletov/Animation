import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    

    
    // Position of circle
    var x : Int
    var y : Int
    var z : Int
    var a : Int
    var b : Int
    var c : Int
    var d : Int
    var e : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
        z = 250
        a = 250
        b = 250
        c = 250
        d = 250
        e = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        
        // Change position
        x += 1
        y += 1
        z += 1
        a += -1
        b += -1
        c += -1
        d += -1
        e += 1
        // Draw an ellipse in the middle of the canvas
        
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
        
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: z, centreY: a, width: 50, height: 50)
        
        
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: b, centreY: c, width: 50, height: 50)
        
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: d, centreY: e, width: 50, height: 50)
        
        
        
    }
    
}
