//
//  ContentView.swift
//  final
//
//  Created by Yaquob Alghadban  on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var pasword: String = ""
    @State var username : String = ""
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("back")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("Welcome to the sea")
                        .font(.title)
                        .fontWeight(.thin)
                        .padding(.top , 20)
                        
                    Image("logo1")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Text("UserName")
                        .font(.title2)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("" , text: $username)
                        .placeholder(when: username.isEmpty, placeholder: {
                            Text("Enter your UserName here")
                            
                        })
                    
                        .padding(.all,22.0)
                        .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                        .cornerRadius(8)
                    
                    Text("Email")
                        .font(.title2)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("" , text: $email)
                        .placeholder(when: email.isEmpty, placeholder: {
                            Text("Enter your email here")
                            
                        })
                        .padding(.all,22.0)
                        .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                        .cornerRadius(8)
                    Text("Password")
                        .font(.title2)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    TextField("" , text: $pasword)
                        .placeholder(when: pasword.isEmpty, placeholder: {
                            Text("Enter your password here")
                            
                        })
                        .padding(.all,20)
                        .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                        .cornerRadius(8)
                    Spacer()
                        .padding(10)
                    
                    
                    
                    
                    
                    NavigationLink(destination: tabview(username: username)) {
                        // Button(action:{}) {
                        
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .medium))
                    }.frame(width: 200, height: 70)
                        .padding(.horizontal,20)
                        .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                        .cornerRadius(8)
                       
                    
                }//vstavh
                .padding()
            }//zstach
            //.navigationBarHidden(true)
            .navigationBarHidden(true)
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
            .preferredColorScheme(.dark)
    }
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
