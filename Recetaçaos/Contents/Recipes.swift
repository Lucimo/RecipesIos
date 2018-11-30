//
//  Recipes.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 29/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import Foundation
class Recipes{
    var recipesAvatar: String?
    var recipesName: String?
    var recipesDifficulty: String?
    var recipesDesc: String?
    var recipesIngredients: String?
    var recipesSteps: String?
    var recipesTime: String?
    
    
    init(recipesAvatar: String?, recipesName: String? ,recipesDifficulty: String?,recipesDesc: String?,  recipesIngredients: String?, recipesSteps: String?, recipesTime: String?) {
        self.recipesAvatar = recipesAvatar
        self.recipesName = recipesName
        self.recipesDifficulty = recipesDifficulty
        self.recipesDesc = recipesDesc
        self.recipesIngredients = recipesIngredients
        self.recipesSteps = recipesSteps
        self.recipesTime = recipesTime
    }
}
