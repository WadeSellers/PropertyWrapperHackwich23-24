import SwiftUI

struct ContentView: View {
    @State var age : Int = 16
    //@State private var counter = 0
    @EnvironmentObject var score: Score
    
    var body: some View {
        VStack {
            Text("Your age is \(age)")
            
            Stepper("Current Number: \(score.highScore)", value: $score.highScore)
            
            Text("The low score is: \(score.lowScore)")
            
            Text("The high score is: \(score.highScore)")
        }
    }
}
