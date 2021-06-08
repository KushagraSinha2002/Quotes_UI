//
//  LaunchView.swift
//  Quotes_UI
//
//  Created by kushagra sinha on 01/06/21.
//

import SwiftUI

struct LaunchView: View {
    
    var quotes: Quotes
    
    var body: some View {
        
        ZStack {
            
            Image(quotes.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
            
            VStack {
                Text(quotes.quotes[0])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text( "- " + quotes.name)
                
            }.padding([.leading, .trailing], 20)
            
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
        
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesModel()
        
        LaunchView(quotes: model.quotes[0])
    }
}
