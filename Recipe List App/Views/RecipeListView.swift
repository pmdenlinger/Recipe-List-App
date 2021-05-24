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
            HStack {
                Image(r.image)
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
