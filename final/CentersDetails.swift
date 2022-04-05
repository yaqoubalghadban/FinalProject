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
                                
                        
                        VStack {
                            Text (i.name)
                                .padding(10)
                        Text("\(i.price.formatted())KD")
                        }
                        Spacer()
                        Button(action: {
                            cartEvn.addItem(Course: Course(name: i.name, price: i.price, images: i.images))
                        }, label: {
                            Text("Add")
                                .foregroundColor(.white)
                                .frame(width: 70, height: 50)
                                .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                                .cornerRadius(8)
                                
                            
                        }).padding()
                            
                            
                        }
                .listRowBackground(Color("back")) .padding(.bottom)
                
               
                }.listStyle(.plain)
              
        }
        }
    }
}

struct CentersDetails_Previews: PreviewProvider {
    static var previews: some View {
        CentersDetails(club:Centers(name: "KCD", courses:[Course(name: "open weater", price: 145.0, images: "open water")]))
            .preferredColorScheme(.dark)
            .environmentObject(CartEnv())
    }
}

