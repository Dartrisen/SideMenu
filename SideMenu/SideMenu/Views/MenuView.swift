//
//  MenuView.swift
//  SideMenu
//
//  Created by Dartrisen on 19.08.2020.
//  Copyright © 2020 LanguiDoge LLC. All rights reserved.
//

import SwiftUI

struct MenuElementView: View {
    var name: String
    var text: String
    
    var body: some View {
        Button(action: {
            withAnimation {
                // MARK: - Implement your code here!
            }
        }) {
        Image(systemName: name)
            .foregroundColor(.gray)
            .imageScale(.large)
        Text(text)
            .foregroundColor(.gray)
            .font(.headline)
        }
    }
}

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                MenuElementView(name: "person",
                                text: "Profile")
            }
                .padding(.top, 100)
            
            HStack {
                MenuElementView(name: "gear",
                                text: "Settings")
            }
                .padding(.top, 30)
            
            HStack {
                MenuElementView(name: "square.and.pencil",
                                text: "About")
            }
                .padding(.top, 30)
                Spacer()
        }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
#endif
