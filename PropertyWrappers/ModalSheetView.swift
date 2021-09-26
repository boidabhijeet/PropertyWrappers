//
//  ModalSheetView.swift
//  PropertyWrappers
//
//  Created by Mac on 28/07/21.
//

import SwiftUI

struct ModalSheetView: View {
    
    @ObservedObject var user: User
    @Binding var isShown: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Lucky Number : ")
                    Text("\(user.luckyNumber)")
                        .padding()
                        .background(Color.yellow)
                }
                
                Button("New Number") {
                    self.user.luckyNumber = Int.random(in: 1...10)
                }
            }
            .navigationBarTitle("\(user.name)")
            .navigationBarItems(trailing:
                                    Button("Dismiss") {
                                        self.isShown = false
                                    }
            )
        }
    }
}
