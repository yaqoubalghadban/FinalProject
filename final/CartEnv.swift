//
//  CartEnv.swift
//  final
//
//  Created by Yaquob Alghadban  on 03/04/2022.
//

import Foundation
class CartEnv : ObservableObject{
    @Published var cartItems : [Course] = []
    
    func addItem(Course : Course){
        cartItems.append(Course)
    }
    func removeItem (at indexSet: IndexSet){
        cartItems.remove(atOffsets: indexSet)
    }
}

