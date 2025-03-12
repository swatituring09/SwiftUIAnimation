import SwiftUI

struct AnimationDemoView: View {
    @State private var isAnimating = false
    @State private var scale: CGFloat = 1.0
    @State private var rotation: Double = 0
    @State private var opacity: Double = 1.0

    var body: some View {
        VStack(spacing: 30) {
            // Scale Animation
            Text("Scale Animation")
                .font(.headline)
            Circle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        scale = scale == 1.0 ? 1.5 : 1.0
                    }
                }

            // Rotation Animation
            Text("Rotation Animation")
                .font(.headline)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(rotation))
                .onTapGesture {
                    withAnimation(.spring()) {
                        rotation += 45
                    }
                }

            // Opacity Animation
            Text("Opacity Animation")
                .font(.headline)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .opacity(opacity)
                .onTapGesture {
                    withAnimation(.linear(duration: 0.5)) {
                        opacity = opacity == 1.0 ? 0.3 : 1.0
                    }
                }
        }
        .padding()
    }
}

struct AnimationDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDemoView()
    }
}
