//
//  DashView
//
//  A work-in-progress by Jason
//
//

import SwiftUI

struct DashboardView: View {
    @State private var search: String = ""
    // example project data
    let projects = [project(title: "Econonomics", description: "Need programmers to help me code a testing app for econ 101 students", url: "economics", id: "32D32WF32DW")]
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                HStack {
                    Spacer()
                    Text("WATcollab")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.yellow)
                    Spacer()
                }.background(Color.black)
                Image("colors")
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
                ScrollView(.vertical){
                    VStack{
                        ForEach(projects){
                            project in CardView(image: project.url, title:project.title, subtitle:project.id, description: project.description )
                                }
                            }
                    }
        }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
        }
    }
}
