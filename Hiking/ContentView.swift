//
//  ContentView.swift
//  Hiking
//
//  Created by Alex Jeffers on 6/23/19.
//  Copyright © 2019 asapinc. All rights reserved.
//

import SwiftUI

struct ContentView : View {
   
    let hikes = Hike.all()
    
    var body: some View {
    
        NavigationView {
            
    List(hikes) { hike in
    teamView(hike: hike)
     }
            .navigationBarTitle(Text("NFC South"))
    }
  }
}
//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//    }
//}
//#endif


struct teamView : View {
    
    let hike: Hike
    
 var body: some View {
    
    
    // NavigationButton(destination: Text(hike.name)) creates view that shows teams name
    
    return NavigationButton(destination: TeamDetails(hike: hike)) {
    HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(hike.wins))
                
            }
          }
        }
    }
}
