//
//  FruitHeaderView.swift
//  UsingUI
//
//  Created by Ruchir on 8/1/21.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit_Details
    
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [fruit.color[0], fruit.color[1]]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimatingImage ? 1.0: 0.6)
                .padding(.vertical, 20)
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0]).previewLayout(.fixed(width: 375, height: 440))
    }
}
