//
//  FruitCardView.swift
//  UsingUI
//
//  Created by Ruchir on 7/25/21.
//

import SwiftUI

struct FruitCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("blueberry")
            Text("BlueBerry")
        }
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView().previewLayout(.fixed(width: 320, height: 640))
    }
}
