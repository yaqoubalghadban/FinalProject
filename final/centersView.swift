//
//  centersView.swift
//  final
//
//  Created by Yaquob Alghadban  on 29/03/2022.
//

import SwiftUI

struct centersView: View {
    var centers = [
      "KCD" , "octopus"
         ]
    var body: some View {
        ZStack {
          Color("back")
                .edgesIgnoringSafeArea(.all)
                ScrollView( showsIndicators: false){
            VStack {
                Text("Centers")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Image("logo1")
                    .resizable()
                    .frame(width: 200, height: 200)
                List(centers, id:\.self){center in
                    
                    HStack{
                        Image("KCD")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("KCD")
                    }
                }
                
               
            }
    }
}        .navigationBarBackButtonHidden(true)
        //.navigationBarHidden(true)
}
}
struct centersView_Previews: PreviewProvider {
    static var previews: some View {
        centersView()
            .preferredColorScheme(.dark)
    }
}
