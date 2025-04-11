//
//  ContentView.swift
//  zona_farm_mobile_ios
//
//  Created by Fatakhillah Khaqo on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ToolsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Tools")
                }
            StatistikView()
                .tabItem {
                    Image(systemName: "angle")
                    Text("Statistic")
                }
            InformationView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Information")
                }
        }
    }
}

#Preview {
    ContentView()
}
