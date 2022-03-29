//
//  tabview.swift
//  final
//
//  Created by Yaquob Alghadban  on 29/03/2022.
//

import SwiftUI

struct tabview: View {
    var username : String
    var body: some View {
        TabView {
                centersView()
                    .tabItem {
                        Label("cart", systemImage: "cart.fill")
                   }

            ProfileView(username: username)
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            centersView()
                    .tabItem {
                        Label("Centers", systemImage: "house.fill")
                    }
            }
        .navigationBarHidden(true)
    }
}

struct tabview_Previews: PreviewProvider {
    static var previews: some View {
        tabview(username: "yaqoub")
    }
}
