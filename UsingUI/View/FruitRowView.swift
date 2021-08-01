//
//  FruitRowView.swift
//  UsingUI
//
//  Created by Ruchir on 7/31/21.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit_Details
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [fruit.color[0], fruit.color[1]]), startPoint: .top, endPoint: .bottom))
            VStack(alignment: .leading,  spacing: 5) {
                Text(fruit.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.description)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
