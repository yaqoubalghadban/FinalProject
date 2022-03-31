//
//  centersView.swift
//  final
//
//  Created by Yaquob Alghadban  on 29/03/2022.
//

import SwiftUI

struct centersView: View {
    var clubes = [Centers(name: "KCD", courses:[Course(name: "open weater", price: 145.0, images: "open water"), Course(name: "advanced", price: 125.0, images:"advanced"),Course(name: "rescue", price: 100.0, images:"rescue"),Course(name: "first aid", price: 65.0, images:"first aid"),Course(name: "master", price: 165.0, images:"master")]),Centers(name: "dive 36", courses:[Course(name: "open weater", price: 175.0, images: "open water"), Course(name: "advanced", price: 150.0, images:"advanced"),Course(name: "rescue", price: 100.0, images:"rescue"),Course(name: "first aid", price: 85.0, images:"first aid"),Course(name: "master", price: 240.0, images:"master")]),Centers(name: "octopus", courses:[Course(name: "open weater", price: 180.0, images: "open water"), Course(name: "advanced", price: 160.0, images:"advanced"),Course(name: "rescue", price: 120.0, images:"rescue"),Course(name: "first aid", price: 90.0, images:"first aid"),Course(name: "master", price: 260.0, images:"master")]),Centers(name: "THE ONE", courses:[Course(name: "open weater", price: 160.0, images: "open water"), Course(name: "advanced", price: 130.0, images:"advanced"),Course(name: "rescue", price: 130.0, images:"rescue"),Course(name: "first aid", price: 65.0, images:"first aid"),Course(name: "master", price: 165.0, images:"master")]),Centers(name: "nautlius", courses:[Course(name: "open weater", price: 195.0, images: "open water"), Course(name: "advanced", price: 140.0, images:"advanced"),Course(name: "rescue", price: 160.0, images:"rescue"),Course(name: "first aid", price: 60.0, images:"first aid"),Course(name: "master", price: 250.0, images:"master")])]
    
    
    // [centers(name: "KCD"),centers(name: "octopus"),centers(name: "nautlius"),centers(name: "THE ONE"),centers(name: "dive 36")
    //]
    
    var body: some View {
        
        ZStack {
            Color("back")
                .ignoresSafeArea(.all)
            VStack {
                Image("logo1")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                
                    .padding()
                
                List(clubes, id:\.id){ club in
                    NavigationLink {
                        CentersDetails(club:club)
                    } label: {
                        HStack{
                            Image(club.name)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .scaledToFit()
                                .clipShape(Circle())
                            
                            Text (club.name)
                        }
                    }.listRowBackground(Color("back")) .padding(.bottom)
                    
                    
                }.listStyle(.plain)
                
            }//VSTACK
        }.navigationBarBackButtonHidden(true)
    }
}

struct centersView_Previews: PreviewProvider {
    static var previews: some View {
        centersView()
            .preferredColorScheme(.dark)
    }
}
