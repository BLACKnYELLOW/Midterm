//
//  RecipeListView.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/20/23.
//

import SwiftUI

struct RecipeListView: View {
    @StateObject var data = FetchData()
    @Binding var number: Double
    @Binding var text: String
    @Binding var view: Int
    
    var body: some View {
        ScrollView {
            ForEach (data.response.results) { r in
                RecipeView(result: r)
            }
        } .task {
            await data.getData(num: number, query: text)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(number: Binding.constant(0.0), text: Binding.constant(""), view: Binding.constant(1))
    }
}
