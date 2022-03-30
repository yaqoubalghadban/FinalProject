//
//  centersView.swift
//  final
//
//  Created by Yaquob Alghadban  on 29/03/2022.
//

import SwiftUI

struct centersView: View {
    var clubes = [
        centers(centerName: "KCD") , centers(centerName: "octopus")
         ]
    
    var body: some View {
        ZStack {
          Color("back")
                .edgesIgnoringSafeArea(.all)
              
            List(clubes, id:\.id){ club in
                Section(header: Text("centers")){
                HStack{
                    Image(club.centerName)
                        .resizable()
                    
                        .frame(width: 120, height: 120)
                        .scaledToFit()
                        .clipShape(Circle())
                       
                    Text (club.centerName)
                }.listRowBackground(Color("back"))}
            }.listStyle(.plain)
            
            
                
               
            
    
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
