//
//  RecipeMenu.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 29/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import SDWebImage
class RecipeMenu: UIViewController {
    
    @IBOutlet weak var RecipeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerRecipesCells()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    internal var recipes: [Recipes] = []
    internal var categoryLabels: [CategoryLabels] = []
    internal var currentindex = 0
    convenience init(recipes: [Recipes]){
        self.init()
        self.recipes = recipes
    }
    private func registerRecipesCells(){
        let identifier = "RecipesCells"
        let cellNib = UINib(nibName: identifier, bundle: nil)
      RecipeTableView.register(cellNib, forCellReuseIdentifier: identifier)
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
extension RecipeMenu: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections ( in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        
        return 4
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "RECIPES                                                 DIFFICULTY"
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return 120.0
        
    }
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell: RecipesCells = (tableView.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as? RecipesCells)!
        let cellRow = recipes[indexPath.row]
        cell.recipesImg?.sd_setImage(with: URL(string: cellRow.recipesAvatar! )!, completed: nil)
        cell.recipesLbl?.text = cellRow.recipesName
        cell.difficultyLbl?.text = cellRow.recipesDifficulty
        cell.accessoryType = .disclosureIndicator
        return cell
        
        
    }
}

