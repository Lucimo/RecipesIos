//
//  CategoryLabels.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 28/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import Foundation
class CategoryLabels{
    var titleCat: String?
    var titleNum: String?
    var foodAvatar: String?
    var recipes: [Recipes] = []
    init(titleCat: String?, titleNum: String?, foodAvatar: String?, recipes: [Recipes]){
        self.titleCat = titleCat
        self.titleNum = titleNum
        self.foodAvatar = foodAvatar
        self.recipes = recipes
    }
    
}
