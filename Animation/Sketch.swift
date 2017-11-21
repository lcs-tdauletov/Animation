import Foundation


class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = sin(x/20) * 40
        
    }
    
    func draw() {
        
        canvas.drawEllipse(centreX: Int(x), centreY: y, width: 1, height: 1)
        
    }
}
