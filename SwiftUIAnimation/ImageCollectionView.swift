import Foundation
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct CollectionView: View {
    let items = [
        Item(name: "Bird", imageName: "bird"),
        Item(name: "Mountain", imageName: "mountain"),
        Item(name: "Tree", imageName: "tree"),
        Item(name: "Sky", imageName: "sky"),
        Item(name: "New Bird", imageName: "bird"),
        Item(name: "Small Mountain", imageName: "mountain"),
        Item(name: "Palm Tree", imageName: "tree"),
        Item(name: "Blue Sky", imageName: "sky")
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        Text("Collection View")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    VStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                        Text(item.name)
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                }
            }
            .padding()
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
