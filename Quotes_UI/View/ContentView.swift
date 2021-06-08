//
//  ContentView.swift
//  Quotes_UI
//
//  Created by kushagra sinha on 31/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuotesModel()
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                VStack{
                    
                    ForEach(model.quotes){r in
                        
                        NavigationLink(
                            destination: DetailView(quotes: r),
                            label: {
                                LaunchView(quotes: r)
                            })
                        
                    }
                }
            }.navigationBarTitle("Authors")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
