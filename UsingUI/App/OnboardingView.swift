//
//  OnboardingView.swift
//  UsingUI
//
//  Created by Ruchir on 7/26/21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit_Details] = fruitsData
    var body: some View {
        ScrollView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item);
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
