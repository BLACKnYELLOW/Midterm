//
//  MenuView.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/20/23.
//

import SwiftUI

struct MenuView: View {
    
    @Binding var number: Double
    @Binding var text: String
    @Binding var view: Int
    
    var body: some View {
        VStack {
        Text("Enter your search term: ")
            TextField("Type here!", text: $text)
        
        Text("how many result do you want")
        
                HStack {
                    Slider(value:$number, in: 0...20)
                }
            Text ("\(Int(number))")
            
            Button  {
                view = 1
            } label: {
                Text("Search")
            }

        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(number: Binding.constant(0.0), text: Binding.constant(""), view: Binding.constant(0))
    }
}
