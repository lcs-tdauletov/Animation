import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Double
    let waveHeight: Int = 200
    let numberOfWaves: Int = 100
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = Double(canvas.height / 2)
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        x += 1
        
        let yOfTopWave = Double(canvas.height / 2 - waveHeight / 2)
        
        for n in 0..<numberOfWaves{
            y = sin(Double(x)/20) * 40 + yOfTopWave + Double(waveHeight / numberOfWaves * n)
            
            canvas.fillColor = Color(hue: 360 / numberOfWaves * n, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: Int(y), width: 10, height: 10)
        }
        
        // Draw an ellipse in the middle of the canvas
    }
    
}
