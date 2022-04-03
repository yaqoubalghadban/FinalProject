//
//  finalApp.swift
//  final
//
//  Created by Yaquob Alghadban  on 25/03/2022.
//

import SwiftUI

@main
struct finalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                                        if #available(iOS 15.0, *) {
                                            let tabBarAppearance = UITabBarAppearance()
                                            tabBarAppearance.configureWithDefaultBackground()
                                            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                                        }
                                    }
        }
    }
}
