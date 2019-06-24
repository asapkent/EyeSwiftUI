//
//  TeamDetails.swift
//  Hiking
//
//  Created by Alex Jeffers on 6/23/19.
//  Copyright © 2019 asapinc. All rights reserved.
//

import Foundation
import SwiftUI


struct TeamDetails: View {
    let hike: Hike
    
    @State var zoomIn = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomIn ? .fill : .fit)
            .tapAction {
                withAnimation(.basic(duration: 2)) {
                  self.zoomIn.toggle()
            }
        }
            //Text(hike.name)
           
        }.navigationBarTitle(Text(hike.name))
            //.navigationBarTitle(Text(hike.name), displayMode: .inline)
           .font(.headline)
    }
}
