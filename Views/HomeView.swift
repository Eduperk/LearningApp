//
//  ContentView.swift
//  Shared
//
//  Created by Aditi Singh  Karnawat on 2021-05-03.
//

import SwiftUI

struct HomeView: View {
   @EnvironmentObject var model : ContentModel
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
