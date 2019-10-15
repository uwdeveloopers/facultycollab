//
//  DashboardView: a work in progress by Jason. Sorry if it crashes :(
//
//

import SwiftUI

struct DashboardView: View {
    @State private var search: String = ""
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
                Text("WATcollab")
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.yellow)
                Spacer()
            }.background(Color.black)
            Image("Colors")
                .resizable()
                .scaledToFit()
            HStack {
                Button( action: {}, label: { Image(systemName: "house") } )
                Spacer()
                Button( action: {}, label: {
                    Image(systemName: "pencil")
                    Text("Post")})
            }.padding()
            Divider()
            Text("Explore")
                .font(.system(size: 30))
                .foregroundColor(.purple)
            TextField("Search", text: $search)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TabView {
                List {
                    Text("Hello")
                    Text("Darkness")
                    Text("My")
                }.tabItem({
                    Image(systemName: "circle")
                    Text("All")}).tag(0)
                List {
                    Text("Old")
                    Text("Friend")
                }.tabItem({
                    Image(systemName: "plusminus")
                    Text("Math")}).tag(1)
                Text("Engineering Faculty").tabItem({
                    Image(systemName: "gear")
                    Text("Engineering")}).tag(2)
                Text("Science Faculty").tabItem({
                    Image(systemName: "tornado")
                    Text("Science")}).tag(3)
                Text("Arts Faculty").tabItem({
                    Image(systemName: "paintbrush")
                    Text("Arts")}).tag(4)
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

