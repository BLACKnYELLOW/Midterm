//
//  RecipeView.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/20/23.
//

import SwiftUI
import struct Kingfisher.KFImage

struct RecipeView: View {
    var result: Result
    var body: some View {
        HStack {
            Text(result.title + " ")
                .font(.custom("Didot-Italic",size:30))
            KFImage(URL(string: result.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(result: Result())
    }
}
