//
//  ContentView.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import SwiftUI
import Combine

struct RootView: View {
    
    @State var selected = 0
    
    var body: some View {
        
        TabView(selection: $selected) {
            WelcomeView(selected: $selected)
                .tabItem {
                    VStack {
                        Text("Welcome")
                        Image(systemName: "play")
                    }
                }
                .tag(0)
            UserListView()
                .tabItem {
                    VStack {
                        Text("List")
                        Image(systemName: "list.bullet")
                    }
                }
                .tag(1)
            ProfileView()
                .tabItem {
                    VStack {
                        Text("Profile")
                        Image(systemName: "person")
                    }
                }
                .tag(2)
        }
    }
    
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
