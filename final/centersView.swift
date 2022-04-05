//
//  centersView.swift
//  final
//
//  Created by Yaquob Alghadban  on 29/03/2022.
//

import SwiftUI

struct centersView: View {
    var clubes = [Centers(name: "KCD", courses:[Course(name: "Open weater", price: 145.0, images: "Open water"), Course(name: "Advanced", price: 125.0, images:"Advanced"),Course(name: "Rescue", price: 100.0, images:"Rescue"),Course(name: "First aid", price: 65.0, images:"First aid"),Course(name: "Master", price: 165.0, images:"Master")]),Centers(name: "Dive 36", courses:[Course(name: "Open weater", price: 175.0, images: "Open water"), Course(name: "Advanced", price: 150.0, images:"Advanced"),Course(name: "Rescue", price: 100.0, images:"Rescue"),Course(name: "First aid", price: 85.0, images:"First aid"),Course(name: "Master", price: 240.0, images:"Master")]),Centers(name: "Octopus", courses:[Course(name: "Open weater", price: 180.0, images: "Open water"), Course(name: "Advanced", price: 160.0, images:"Advanced"),Course(name: "Rescue", price: 120.0, images:"Rescue"),Course(name: "First aid", price: 90.0, images:"First aid"),Course(name: "Master", price: 260.0, images:"Master")]),Centers(name: "THE ONE", courses:[Course(name: "Open weater", price: 160.0, images: "Open water"), Course(name: "Advanced", price: 130.0, images:"Advanced"),Course(name: "Rescue", price: 130.0, images:"Rescue"),Course(name: "First aid", price: 65.0, images:"First aid"),Course(name: "Master", price: 165.0, images:"Master")]),Centers(name: "Nautlius", courses:[Course(name: "Open weater", price: 195.0, images: "Open water"), Course(name: "Advanced", price: 140.0, images:"Advanced"),Course(name: "Rescue", price: 160.0, images:"Rescue"),Course(name: "First aid", price: 60.0, images:"First aid"),Course(name: "Master", price: 250.0, images:"Master")])]

    var body: some View {
        
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.top)
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
                            //Button(MyCart.applying()){
                                
                           // }
                        
                               
                            
                            
                            
                        }
                    }.listRowBackground(Color("back")) .padding(.bottom)
                    
                    
                }.listStyle(.plain)
                
            }//.offset(y:-50)
        }.navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
             .navigationBarHidden(true)
    }
}

struct centersView_Previews: PreviewProvider {
    static var previews: some View {
        centersView()
            .preferredColorScheme(.dark)
            .environmentObject(CartEnv())
    }
}
