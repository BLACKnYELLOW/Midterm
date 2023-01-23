//
//  FetchData.swift
//  Midterm
//
//  Created by Asher Polsky (student LM) on 1/19/23.
//

import Foundation


//
class FetchData: ObservableObject {
    
    @Published var response: Response = Response()
    
    func getData(num: Double, query: String) async {
        let number = Int(num)
        let URLString =  "https://api.spoonacular.com/recipes/complexSearch?apiKey=b4589be659e141fdac4018b5a7ba3ff7&query=\(query)&number=\(number)"
        
        guard let url = URL(string: URLString) else {return}
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            response = try JSONDecoder().decode(Response.self, from: data)
        } catch {
            print (error)
        }
        
        print (response.results)
    }
}
