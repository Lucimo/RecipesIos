//
//  CategoryCells.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 28/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class CategoryCells: UITableViewCell {

    @IBOutlet weak var numLbl: UILabel!
    @IBOutlet weak var catLbl: UILabel!
    @IBOutlet weak var categoryImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
