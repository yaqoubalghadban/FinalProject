//
//  cartviwe.swift
//  final
//
//  Created by Yaquob Alghadban  on 31/03/2022.
//

import SwiftUI

struct cartviwe: View {
    @EnvironmentObject var cartEvn: CartEnv

    @State var totalAmount = 0.0
    var body: some View {
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("cart")
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                   
                    
                List{
                    ForEach(cartEvn.cartItems){
                        i in
                        VStack(alignment: .leading){
                                            Text(i.name)
                                            Image(i.images)
                                                .resizable()
                                                .frame(width: 320, height: 230)
                                                .scaledToFit()
                                                .cornerRadius(15)
                                           Text("Course price: \(i.price.formatted())KD")
                                .onAppear {
                                    totalAmount += i.price
                                    
                                }
                            
                                                }
                    }
                    .onDelete(perform: {IndexSet in cartEvn.removeItem(at: IndexSet)})
                }.backgroundList(Color("back"))
          Text("\(totalAmount)")
            }
            
        }
    }
}

struct cartviwe_Previews: PreviewProvider {
    static var previews: some View {
        cartviwe()
            .environmentObject(CartEnv())
            .preferredColorScheme(.dark)
    }
}

extension List{
@available(iOS 14, *)
func backgroundList(_ color: Color = .clear) -> some View{
    UITableView.appearance().backgroundColor = UIColor(color)
    return self
}
}
