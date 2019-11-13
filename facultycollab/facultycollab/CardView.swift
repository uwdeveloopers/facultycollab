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
            Image(image).resizable().frame(width: 200.0, height: 200.0)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(description)
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Button(action: {}, label: {Text("Reply")
                        Image(systemName: "pencil")})
                    }
            }.padding()
        }.background(Color.yellow).cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

