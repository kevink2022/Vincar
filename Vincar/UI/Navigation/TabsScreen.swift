//
//  TabsScreen.swift
//  Vincar
//
//  Created by Kevin Kelly on 7/17/24.
//

import SwiftUI

private typealias SI = ViewConstants.SystemImages

struct TabsScreen: View {
    @Environment(\.navigator) var navigator
    
    
    var body: some View {
        @Bindable var navigator = navigator
        
        TabView(selection: $navigator.tab) {
            Text("Statistics Screen")
                .tabItem { Label("Statistics", systemImage: SI.statistics) }
                .tag(TabNavigation.statistics)
            
            Text("History Screen")
                .tabItem { Label("History", systemImage: SI.history) }
                .tag(TabNavigation.history)
            
            Text("New Workout Screen")
                .tabItem { Label("New Workout", systemImage: SI.newWorkout) }
                .tag(TabNavigation.newWorkout)
            
            Text("Exercises Screen")
                .tabItem { Label("Exercises", systemImage: SI.exercise) }
                .tag(TabNavigation.exercises)
            
            Text("Settings Screen")
                .tabItem { Label("Settings", systemImage: SI.settings) }
                .tag(TabNavigation.settings)
        }
    }
}

#Preview {
    TabsScreen()
}
