//
//  MenuButton.swift
//  SlideoutMenu
//
//  Created by armdnks on 12/10/21.
//

import SwiftUI

struct MenuButton: View {
    
    var title: String
    var image: String
    
    @Binding var selectedMenu: String
    @Binding var showMenu: Bool
    
    var animation: Namespace.ID
    var body: some View {
        
        Button(action: {
            
            withAnimation(.spring()) {
                selectedMenu = title
                showMenu.toggle()
            }
        }, label: {
            
            HStack(spacing: 10) {
                
                Text(title)
                    .fontWeight(.semibold)
                
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30, height: 30)
            }
            .foregroundColor(selectedMenu == title ? Color.white : Color.white.opacity(0.5))
            .padding(.vertical, 10)
            
            ZStack {
                
                if selectedMenu == title {
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 5, height: 30)
                        .matchedGeometryEffect(id: "MENUTAB", in: animation)
                }
            }
            .padding(.leading, 5)
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
