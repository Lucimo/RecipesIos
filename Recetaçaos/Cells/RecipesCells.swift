//
//  RecipesCells.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 29/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class RecipesCells: UITableViewCell {
   
    
    @IBOutlet weak var recipesImg: UIImageView!
    
    @IBOutlet weak var difficultyLbl: UILabel!
    @IBOutlet weak var recipesLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
