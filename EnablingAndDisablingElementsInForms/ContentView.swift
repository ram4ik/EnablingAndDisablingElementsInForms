//
//  ContentView.swift
//  EnablingAndDisablingElementsInForms
//
//  Created by ramil on 02/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var agreedToTerms = false

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $agreedToTerms) {
                        Text("Agree to terms and conditions")
                    }
                }

                Section {
                    Button(action: {
                        // show next screen here
                    }) {
                        Text("Continue")
                    }.disabled(!agreedToTerms)
                }
            }.navigationBarTitle("Welcome")

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
