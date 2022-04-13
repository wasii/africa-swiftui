//
//  ExternalWebsiteLink.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import SwiftUI

struct ExternalWebsiteLink: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Text("Wikipedia")
                Image(systemName: "globe")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link)!)
                }
                .foregroundColor(.accentColor)
            } // - HStack
        } // - GroupBox
        
    }
}

struct ExternalWebsiteLink_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebsiteLink(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
