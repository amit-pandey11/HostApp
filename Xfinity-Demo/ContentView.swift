//
//  ContentView.swift
//  Xfinity-Demo
//
//  Created by Amit Pandey on 06/10/2025.
//

import SwiftUI
import SwiftData
import ServicesSPM

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        Text("Host App With -> \(ServicesSPM.getServicesSPMVersion())")
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
