//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Valerie Hammer on 4/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
//var name = "" is a *property* because it is a variable specific to the struct. It is set to an empty string to prompt that nothing is entered upon the app opening. We use these when the data is likely to change and needs to be updated and reflected in UI accordingly.
//@State is a *property wrapper*. It tells Swift to keep track of the variable and update the interface as it changes.
   
    @State private var textTitle = "What is your name?"
//Creates condition for title of page to change over time (title will change to Welcome, name! after submit button is clicked). Also establishes default text when app is opened and/or nothing is submitted in the text field.
   
    @State private var presentAlert = false
//This sets up the possibility for an alert, and that upon opening, there is none (false). When binding value is set to true, the alert will show.
    
    @State private var date = Date()
//This sets up the possibility for date entry, and that upon opening the app, the default value is blank.

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
                
                presentAlert = true
//prompts alert to present when the button is clicked
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
//style of button - note that buttons have styles so that it all doesn't have to be written out.
            .alert("Do we have it right?", isPresented: $presentAlert, actions: {
            }, message: {
                Text("Please check your name on the welcome screen and make sure it is what you'd like to be called by our app.")
            })
//binds alert value to true when the "submit name" button is pressed and prompts an alert with the label & message listed here. No actions assigned to the alert, it disappears after pressing ok
            
            DatePicker(
                    "What is your birthday?",
                    selection: $date,
                    displayedComponents: [.date]
                )
//selection binds to date variable. display components creates date picker with only date shown (no time)
           
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
