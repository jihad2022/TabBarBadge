import SwiftUI

class Order: ObservableObject {
    
    @Published var items = [String]()

    func add(item: String) {
        items.append(item)
    }

    func remove(item: String) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
