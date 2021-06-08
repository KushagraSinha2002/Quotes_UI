//
//  DetailView.swift
//  Quotes_UI
//
//  Created by kushagra sinha on 01/06/21.
//

import SwiftUI

struct DetailView: View {
    
    var quotes: Quotes
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 20.0){
            
            Text(quotes.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            ForEach(quotes.quotes,id: \.self){r in
                Text(r)
            }
            Spacer()
            
        }
        .padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesModel()
        
        DetailView(quotes: model.quotes[0])
    }
}
