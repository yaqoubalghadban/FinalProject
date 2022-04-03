//
//  CentersDetails.swift
//  final
//
//  Created by Yaquob Alghadban  on 31/03/2022.
//

import SwiftUI

struct CentersDetails: View {
    var club : Centers
    @EnvironmentObject var cartEvn: CartEnv
    var body: some View {
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.all)
        VStack{
            Image(club.name)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .scaledToFit()
            List(club.courses, id:\.id){ i in
//                NavigationLink {
//                    cartviwe()
                
                    HStack{
                        Image(i.images)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .scaledToFit()
                                .clipShape(Circle())
                                
                        
                            Text (i.name)
                        Text("\(i.price.formatted())")
                            
                        
                        Button(action: {
                            
                        }, label: {
                            Text("add")
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                                .cornerRadius(8)
                                .padding()
                            
                        })
                        
                            
                        }
                .listRowBackground(Color("back")) .padding(.bottom)

               
                }.listStyle(.plain)
                .environmentObject(cartEvn())
        }
        }
    }
}


