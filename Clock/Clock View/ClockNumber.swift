import SwiftUI

struct ClockNumber: View {
    
   
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<12) { n in
                Text("\(n+1)")
                    .font(.custom("SFProText-Bold", size: geometry.size.height / 10))
                .position(x: geometry.size.width / 2, y: geometry.size.height / 10)
                .rotationEffect(Angle(degrees: Double(n+1) * 360 / 12))
                    
            }
        }
    }
}
