//
//  SettlingsView.swift
//  UsingUI
//
//  Created by Ruchir on 8/4/21.
//

import SwiftUI

struct SettingsView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    Text("hello")
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
