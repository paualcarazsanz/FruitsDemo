import SwiftUI

struct ContentView: View {
    @StateObject var store = FruitStore()
    
    var body: some View {
        NavigationView {
            List(store.fruits) { fruit in
                NavigationLink(destination: DetailFruitView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}