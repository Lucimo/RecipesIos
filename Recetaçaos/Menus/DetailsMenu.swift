//
//  DetailsMenu.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 30/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import SDWebImage
class DetailsMenu: UIViewController {
    
    internal var  recipes: Recipes?

    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var descTV: UITextView!
    @IBOutlet weak var ingredientsTV: UITextView!
    @IBOutlet weak var stepsTV: UITextView!
    @IBOutlet weak var mapBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapBtn.layer.cornerRadius = 20.8
       detailImg?.sd_setImage(with: URL(string: recipes!.recipesAvatar! )!, completed: nil)
        descTV.text = recipes?.recipesDesc
        ingredientsTV.text = recipes?.recipesIngredients
        stepsTV.text = recipes?.recipesSteps
        // Do any additional setup after loading the view.
    }
    
    convenience init(recipes: Recipes){
      self.init()
        self.recipes = recipes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
