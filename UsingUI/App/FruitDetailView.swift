//
//  FruitDetailView.swift
//  UsingUI
//
//  Created by Ruchir on 8/1/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit_Details
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                FruitHeaderView(fruit: fruit)
                VStack(alignment: .leading, spacing: 20) {
                    Text(fruit.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    SourceLink()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                }
                .padding(.horizontal)
                .frame(maxWidth: 640, alignment: .center)
                .navigationBarTitle(fruit.name, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[8])
    }
}
