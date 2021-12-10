//
//  MenuView.swift
//  SlideoutMenu
//
//  Created by armdnks on 11/13/21.
//

import SwiftUI

struct MenuView: View {
    
    @Binding var selectedMenu: String
    @Binding var showMenu: Bool
    @Namespace var animation
    
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 15) {
            
            // Profile pic
            Image("profilePic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .foregroundColor(.white)
            
            VStack(alignment: .trailing, spacing: 5) {
                
                Text("Profile Name")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    
                    Text("View Profile")
                        .font(.body)
                        .fontWeight(.semibold)
                        .opacity(0.7)
                        .foregroundColor(.white)
                })
            }
            
            Divider()
                .background(Color.white)
                .padding(.top, 15)
            
            VStack(alignment: .trailing, spacing: 12) {
                
                // menu Button
                MenuButton(title: "Home", image: "house", selectedMenu: $selectedMenu, showMenu: $showMenu, animation: animation)
                
                MenuButton(title: "Shopping Cart", image: "cart", selectedMenu: $selectedMenu, showMenu: $showMenu, animation: animation)
                
                MenuButton(title: "Notifications", image: "bell.badge", selectedMenu: $selectedMenu, showMenu: $showMenu, animation: animation)
                
                MenuButton(title: "Settings", image: "gearshape.fill", selectedMenu: $selectedMenu, showMenu: $showMenu, animation: animation)
                
                MenuButton(title: "Help", image: "questionmark.circle", selectedMenu: $selectedMenu, showMenu: $showMenu, animation: animation)
            }
            .padding(.top,10)
            
            Divider()
                .background(Color.white)
                .padding(.top, 25)
            
            Spacer(minLength: 0)
            
            VStack(alignment: .trailing) {
                
                Button (action: {}) {
                    
                    HStack(spacing: 10) {
                        
                        Text("Sign Out")
                            .fontWeight(.bold)
                        Image(systemName: "arrowshape.turn.up.right.fill")
                    }
                    .foregroundColor(Color.white.opacity(0.5))
                    .padding(.bottom, 5)
                }
                
                Text("armadanks")
                    .font(.callout)
                    .foregroundColor(Color.white.opacity(0.5))
            }
        }
        .padding(.top, 70)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
