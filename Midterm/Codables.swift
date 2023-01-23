//
//  Codables.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/19/23.
//

import Foundation

struct Response: Codable {
    var results: [Result] = []
}

struct Result: Codable, Identifiable {
    var title: String = "Beans"
    var image: String = "https://spoonacular.com/recipeImages/638125-312x231.jpg"
    var id: Int = 2342342
}
