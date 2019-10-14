//
//
//  DashboardView
//
//  Work-in-progress by Jason. If it crashes, I'm sorry :(
//
//

import SwiftUI

struct DashboardView: View {
    @State var search: String = "Search"
    var body: some View {
        VStack {
            Text("WATcollab")
                .font(.title)
                .bold()
                .foregroundColor(.yellow)
                .background(Color.black)
            HStack {
                Button( action: {},
                        label: { Image(systemName: "house")
                })
            Spacer()}
            Divider()
            Text("Explore")
                .font(.subheadline)
                .foregroundColor(.purple)
            Spacer()
            TextField("Search", text: $search)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TabView {
                Text("All Faculties").tabItem({
                    Image(systemName: "circle")
                    Text("All")}).tag(0)
                Text("Math Faculty").tabItem({
                    Image(systemName: "plus")
                    Text("Math")}).tag(1)
                Text("Engineering Faculty").tabItem({
                    Image(systemName: "gear")
                    Text("Engineering")}).tag(1)
                Text("Science Faculty").tabItem({
                    Image(systemName: "potion")
                    Text("Science")}).tag(1)
                Text("Arts Faculty").tabItem({
                    Image(systemName: "pencil")
                    Text("Arts")}).tag(1)
            }
    }.padding()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

