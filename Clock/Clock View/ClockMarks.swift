
import SwiftUI

struct ClockMarks: View {
    
    var relativeLength: CGFloat = 0.01
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<60) { n in
                Path { path in
                    let length = n % 5 == 0 ? self.relativeLength * 5 : self.relativeLength
                    path.move(to: CGPoint(x: geometry.size.width / 2, y: 0))
                    path.addLine(to: CGPoint(x: geometry.size.width / 2, y: length * geometry.size.height))
                }
                .stroke(Color.secondary)
                .rotationEffect(Angle(degrees: Double(n) * 360 / 60))
            }
        }
    }
}
