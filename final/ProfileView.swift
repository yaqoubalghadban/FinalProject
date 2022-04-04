//
//  ProfileView.swift
//  final
//
//  Created by Yaquob Alghadban  on 27/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    @State var licenes : String = ""
    var username : String
    var body: some View {
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.top)
            VStack{
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text(" \(username)")
                    .font(.title3)
                    .fontWeight(.medium)
                
                
                VStack {
                    ZStack(alignment: .top) {
                        Rectangle()
                            .foregroundColor(Color("back"))
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 100)
                        
                        Button {
                            shouldShowImagePicker.toggle()
                        } label: {
                            VStack {
                                if let image = self.image {
                                    Image(uiImage: image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 180)
                                        .cornerRadius(80)
                                    
                                } else {
                                    Image(systemName: "person.fill")
                                        .font(.system(size: 180))
                                        .padding()
                                        .foregroundColor(Color(.label))
                                }
                            }
                            .overlay(RoundedRectangle(cornerRadius: 80)
                                        .stroke(Color(hue: 0.603, saturation: 0.806, brightness: 0.443), lineWidth: 3)
                            )
                        }
                    }//end Zstack
                }
                
                VStack(spacing: 5) {
                    VStack(spacing: 5) {
                        Text("Diving License")
                            .foregroundColor(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                        
                            .bold()
                            .font(.title)
                            .padding(30)
                        TextField("" , text: $licenes)
                            .placeholder(when: licenes.isEmpty, placeholder: {
                                Text("Enter your Diving License here")
                                
                            })
                            .padding(.all,22.0)
                            .background(Color(hue: 0.603, saturation: 0.806, brightness: 0.443))
                            .cornerRadius(8)
                        
                    }.padding()
                    
                    //Spacer()
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        //.navigationBarHidden(true)
        
        //                    .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
            ImagePicker(image: $image)
                
        }
    }
}


//   struct ContentView_Previews: PreviewProvider {
//static var previews: some View {
//   ContentView()
// }
// }

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    
    private let controller = UIImagePickerController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.image = info[.originalImage] as? UIImage
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}







// }
 //.navigationBarBackButtonHidden(true)
// }
//}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView( username: "yaqoub")
            .preferredColorScheme(.dark)
    }
}
