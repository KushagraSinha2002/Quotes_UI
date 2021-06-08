//
//  Quotes.swift
//  Quotes_UI
//
//  Created by kushagra sinha on 01/06/21.
//

import Foundation

class Quotes: Identifiable, Decodable {
        
    var id:UUID?
    var name: String
    var quotes: [String]
    var image: String
}
