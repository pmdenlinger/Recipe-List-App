//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by user on 5/24/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
    ScrollView {
        
        VStack(alignment: .leading) {
            // MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                
            // MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                // MARK: Divider
                Divider()
                
                ForEach (recipe.ingredients, id: \.self) {
                    item in
                    Text("- " + item)
                }
            }
            
            // MARK: Directions
            VStack(alignment: .leading) {
                Text("Directions")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                ForEach(0..<recipe.directions.count, id: \.self) { index
                    in
                    Text(String(index + 1) + ". " + recipe.directions[index])
                        .padding(.bottom, 5)
                }
            }
        }
        
        
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
}
