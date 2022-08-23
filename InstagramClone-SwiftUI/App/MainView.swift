//
//  MainView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchTabView(text: "")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            CameraTabView()
                .tabItem {
                    Image(systemName: "plus.app")
                }
            
            NotificationTabView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileTabView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
