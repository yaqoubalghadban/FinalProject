//
//  cartviwe.swift
//  final
//
//  Created by Yaquob Alghadban  on 31/03/2022.
//

import SwiftUI

struct cartviwe: View {
    var body: some View {
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("cart")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
            }
        }
    }
}

struct cartviwe_Previews: PreviewProvider {
    static var previews: some View {
        cartviwe()
            .preferredColorScheme(.dark)
    }
}
