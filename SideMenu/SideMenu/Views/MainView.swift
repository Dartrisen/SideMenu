//
//  MainView.swift
//  SideMenu
//
//  Created by Dartrisen on 19.08.2020.
//  Copyright © 2020 LanguiDoge LLC. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack {
            if showMenu {
                Text("Main View")
                    .font(.largeTitle)
                    .blur(radius: 20)
            } else {
                Text("Main View")
                    .font(.largeTitle)
            }
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
