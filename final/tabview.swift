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
            

            
            
            ZStack {
                VisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
                centersView()
            }
                    .tabItem {
                        Label("Centers", systemImage: "house.fill")
                    }
            
            
            
            ZStack {

                VisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
                cartviwe()
            }
                        .tabItem {
                            Label("cart", systemImage: "bag.fill")
                        }
                        
            
            
            
            ZStack {
                            VisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
                            ProfileView(username: username)
                        }

                                .tabItem {
                                    Label("Profile", systemImage: "person.fill")
                                }

            
            }
        .navigationBarHidden(true)
        
        
        
    }
    
    
}



struct tabview_Previews: PreviewProvider {
    
   
    
    static var previews: some View {
        
       
        
        
        tabview(username: "yaqoub")
            .preferredColorScheme(.dark)
            .environmentObject(CartEnv())
    }
}

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}
