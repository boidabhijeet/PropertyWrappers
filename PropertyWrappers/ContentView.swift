//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Mac on 28/07/21.

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var user = User(name: "Jaden", luckyNumber: 0)
    @State var isPresented = false
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
                
                Button("Show Modal") {
                    self.isPresented.toggle()
                }
            }
            .sheet(isPresented: $isPresented, content: {
                ModalSheetView(user: user, isShown: $isPresented)
            })
            .navigationTitle("\(user.name)")
        }
    }
}
