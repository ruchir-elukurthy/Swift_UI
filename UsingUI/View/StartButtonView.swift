//
//  StartButtonView.swift
//  UsingUI
//
//  Created by Ruchir on 7/26/21.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        
        Button(action: {
            isOnboarding = false;
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }.accentColor(Color.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        })
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits) //Makes the preview smaller and keeps it as much as we are using.
    }
}
