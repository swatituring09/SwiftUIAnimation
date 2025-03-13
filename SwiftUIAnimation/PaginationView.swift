import Foundation
import SwiftUI

struct PaginatedImageView: View {
    let images = ["bird", "mountain", "tree", "sky"]
    let titles = ["Sunset", "Mountain", "Ocean", "Forest"]
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<images.count, id: \..self) { index in
                    VStack {
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)
                            .cornerRadius(10)
                            .tag(index)
                        
                        Text(titles[index])
                            .font(.headline)
                            .padding(.top, 10)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct PaginatedImageView_Previews: PreviewProvider {
    static var previews: some View {
        PaginatedImageView()
    }
}
