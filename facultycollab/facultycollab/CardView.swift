///
//  CardView.swift
//
//  Created by Jason on 2019-11-05.
//  Copyright © 2019 Jason. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var image = ""
    var title = ""
    var subtitle = ""
    var description = ""
    
    var body: some View {
        VStack{
            Image(image).resizable().aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(description)
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                }
        }.cornerRadius(10).background(Color.yellow)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

