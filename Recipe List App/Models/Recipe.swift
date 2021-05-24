//
//  Recipe.swift
//  Recipe List App
//
//  Created by user on 5/24/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    // This class is the source of truth
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
    
    
}
