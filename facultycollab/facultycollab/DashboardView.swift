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
    let projects = [project(title: "Econonomics", description: "Need programmers to help me code a testing app for econ 101 students", url: "economics", id: "32D32WF32DW"), project(title: "Business Startup", description: "Need business students to help me fill out forms cuz I'm starting my own startup", url: "business", id: "3ASDASDBNN")]
    
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
                    .frame(width: 200.0, height: 150.0)
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
                }.padding()
                HStack{
                    Button(action: {}, label: {Image(systemName: "circle")})
                    Button(action: {}, label: {Image(systemName: "pencil")})
                    Button( action: {}, label: {Image(systemName: "plusminus")})
                    Button( action: {}, label: {Image(systemName: "gear")})
                    Button( action: {}, label: {Image(systemName: "cloud")})
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
