//
//  RecipeListView.swift
//  Recipe List App
//
//  Created by user on 5/24/21.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        List(model.recipes) { r in
            HStack(spacing: 20.0) {
                Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                Text(r.name)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
