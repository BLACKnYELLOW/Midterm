//
//  ContentView.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var number: Double = 10
    @State var text: String = "chicken"
    @State var currentView: Int = 0
    var body: some View {
        //TabView {
            //
        if currentView == 0 {
            MenuView(number: $number, text: $text, view: $currentView)
        } else if currentView == 1 {
            RecipeListView(number: $number, text: $text, view: $currentView)
        }
               // .tabItem {
               //     Image(systemName: "timelapse")
               //     Text("Menu")
               // }
       // }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
