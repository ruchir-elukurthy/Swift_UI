//
//  ContentView.swift
//  UsingUI
//
//  Created by Ruchir on 7/25/21.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit_Details] = fruitsData

    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView();
    }
}
