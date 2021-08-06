//
//  FruitNutrients.swift
//  UsingUI
//
//  Created by Ruchir on 8/3/21.
//

import SwiftUI

struct FruitNutrients: View {
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrients") {
                Text("hello");
            }.accentColor(.black)
        }
    }
}

struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients()
    }
}
