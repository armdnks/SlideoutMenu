//
//  SubView.swift
//  SlideoutMenu
//
//  Created by armdnks on 12/10/21.
//

import SwiftUI

// all sub page
struct HomePage: View {
    var body: some View {
        
        ZStack {
            
            Color
                .purple.opacity(0)
                .ignoresSafeArea()
            
            Text("Home")
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .foregroundColor(Color("backgroundMenu2").opacity(0.8))
                .frame(width: 900, alignment: .leading)
                .rotationEffect(Angle(degrees: -90), anchor: .center)
                .offset(x: 125, y: -50)
        }
    }
}

struct CartPage: View {
    var body: some View {
        
        ZStack {
            
            Color
                .purple.opacity(0)
                .ignoresSafeArea()
            
            Text("Shopping Cart")
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .foregroundColor(Color("backgroundMenu2").opacity(0.8))
                .frame(width: 900, alignment: .leading)
                .rotationEffect(Angle(degrees: -90), anchor: .center)
                .offset(x: 125, y: -50)
        }
    }
}

struct NotifPage: View {
    var body: some View {
        
        ZStack {
            
            Color
                .purple.opacity(0)
                .ignoresSafeArea()
            
            Text("Notifications")
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .foregroundColor(Color("backgroundMenu2").opacity(0.8))
                .frame(width: 900, alignment: .leading)
                .rotationEffect(Angle(degrees: -90), anchor: .center)
                .offset(x: 125, y: -50)
        }
    }
}

struct SettingPage: View {
    var body: some View {
        
        ZStack {
            
            Color
                .purple.opacity(0)
                .ignoresSafeArea()
            
            Text("Settings")
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .foregroundColor(Color("backgroundMenu2").opacity(0.8))
                .frame(width: 900, alignment: .leading)
                .rotationEffect(Angle(degrees: -90), anchor: .center)
                .offset(x: 125, y: -50)
        }
    }
}

struct HelpPage: View {
    var body: some View {
        
        ZStack {
            
            Color
                .purple.opacity(0)
                .ignoresSafeArea()
            
            Text("Help")
                .font(.system(size: 80))
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .foregroundColor(Color("backgroundMenu2").opacity(0.8))
                .frame(width: 900, alignment: .leading)
                .rotationEffect(Angle(degrees: -90), anchor: .center)
                .offset(x: 125, y: -50)
            
        }
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
