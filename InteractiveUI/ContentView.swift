//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Valerie Hammer on 4/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("What is your name?")
                .font(.title)
            TextField("Type your name here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
//style of button - note that buttons have styles so that it all doesn't have to be written out.
        }
//end VStack
        .padding()
//VStack padding
    
    }
//end body
}
//end ContentView

#Preview {
    ContentView()
}
