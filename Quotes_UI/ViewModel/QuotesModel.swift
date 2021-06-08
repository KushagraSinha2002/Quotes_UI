//
//  QuotesModel.swift
//  Quotes_UI
//
//  Created by kushagra sinha on 01/06/21.
//

import Foundation

class QuotesModel: ObservableObject {
    
    @Published var quotes = [Quotes]()
    
    init() {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let quoteData = try decoder.decode([Quotes].self, from: data)
                    
                    
                    for r in quoteData{
                        
                        r.id = UUID()
                    }
                    
                    self.quotes = quoteData
                    
                }
                catch{
                    print(error)
                }
            }
            catch{
                print(error)
            }
            
        }
        
    }
}
