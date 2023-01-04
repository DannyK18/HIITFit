//
//  ContentView.swift
//  HIITFit
//
//  Created by Daniel on 30.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           WelcomeView()
            ForEach(0 ..< Exercise.exercises.count) { index in
              ExerciseView(index: index)
            }
            Text("Exercise 2")
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .indexViewStyle(
          PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
