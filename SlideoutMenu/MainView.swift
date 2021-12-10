//
//  MainView.swift
//  SlideoutMenu
//
//  Created by armdnks on 11/13/21.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedMenu = "Home"
    
    // "true" for edit menu
    @State var showMenu = false
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
            // background
            LinearGradient(gradient: Gradient(colors: [Color("backgroundMenu1"), Color("backgroundMenu2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            MenuView(selectedMenu: $selectedMenu, showMenu: $showMenu)
                .padding(.trailing)
                .offset(x: showMenu ? 0 : 200)
                .opacity(showMenu ? 1 : 0)
                .scaleEffect(showMenu ? 1 : 0.5)
            
            // background effects
            ZStack {
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(30)
                    .scaleEffect(0.8)
                    .offset(x: showMenu ? 110 : 0)
                
                Color.white
                    .opacity(0.75)
                    .cornerRadius(30)
                    .scaleEffect(0.9)
                    .offset(x: showMenu ? 60 : 0)
                
                HomeView(selectedMenu: $selectedMenu)
                    .cornerRadius(showMenu ? 30 : 0)
            }
            .scaleEffect(showMenu ? 0.8 : 1)
            .offset(x: showMenu ? -230 : 0)
            .ignoresSafeArea()
            .overlay(
                
                Button(action:{
                    withAnimation(.spring()) {
                        showMenu.toggle()
                    }
                }, label: {
                    VStack {
                        
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .font(.system(size: 10, weight: .semibold))
                            .frame(width: 30, height: 30, alignment: .leading)
                            .background(Color.clear)
                            .foregroundColor( showMenu ? Color.white : Color("backgroundMenu2"))
                    }
                })
                .padding(.trailing, 25)
                ,alignment: .topTrailing
            )
            .shadow(color: (showMenu ? Color.black.opacity(0.4) : Color.clear), radius: 50, x: 25, y: 50)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
