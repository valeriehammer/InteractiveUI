//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Valerie Hammer on 4/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
//var name = "" is a *property* because it is a variable specific to the struct. It is set to an empty string to prompt that nothing is entered upon the app opening.
//@State is a *property wrapper*. It tells Swift to keep track of the variable and update the interface as it changes.
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack{
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
//$ means that there is 2 way binding. Keeps track of changes and updates property name.
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
//  No dollar sign needed for name property here because the value isn't changing, no binding needed.
//  Changes textTitle to read Welcome with name that is entered
                name = ""
//  Resets name property state to being blank after button is clicked.
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
