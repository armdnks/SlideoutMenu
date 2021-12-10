//
//  HomeView.swift
//  SlideoutMenu
//
//  Created by armdnks on 11/13/21.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var selectedMenu: String
    
    // hiding tab bar
    init(selectedMenu: Binding<String>) {
        
        self._selectedMenu = selectedMenu
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $selectedMenu) {
            
            // page view
            HomePage().tag("Home")
            
            CartPage().tag("Shopping Cart")
            
            NotifPage().tag("Notifications")
            
            SettingPage().tag("Settings")
            
            HelpPage().tag("Help")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
