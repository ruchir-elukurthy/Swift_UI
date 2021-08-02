//
//  SourceLink.swift
//  UsingUI
//
//  Created by Ruchir on 8/1/21.
//

import SwiftUI

struct SourceLink: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("content source");
                Spacer();
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/Main_Page")!)
                    .foregroundColor(Color.black)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

struct SourceLink_Previews: PreviewProvider {
    static var previews: some View {
        SourceLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
