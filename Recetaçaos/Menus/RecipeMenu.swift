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
    internal var refreshControl = UIRefreshControl()
    @IBOutlet weak var RecipeTableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerRecipesCells()
       
        
        searchController.searchBar.backgroundColor = UIColor.white
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    internal var recipes: [Recipes] = []
    internal var filteredRecipes: [Recipes] = []
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
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func searchFilter(_ searchText: String){
     filteredRecipes =  recipes.filter({ (nRecipe: Recipes ) -> Bool in
            
        return (nRecipe.recipesName?.lowercased().contains(searchText.lowercased()))!
        })
        RecipeTableView.reloadData()
    }
}
extension RecipeMenu: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections ( in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        if isFiltering(){
            return filteredRecipes.count
        }
        else{
        return recipes.count
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "RECIPES                                                 DIFFICULTY"
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
       
        return 120.0
        
    }
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if isFiltering(){
            let cell: RecipesCells = (tableView.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as? RecipesCells)!
            let cellRow = filteredRecipes[indexPath.row]
            cell.recipesImg?.sd_setImage(with: URL(string: cellRow.recipesAvatar! )!, completed: nil)
            cell.recipesLbl?.text = cellRow.recipesName
            cell.difficultyLbl?.text = cellRow.recipesDifficulty
            
            
        }else{
            let cell: RecipesCells = (tableView.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as? RecipesCells)!
            let cellRow = recipes[indexPath.row]
            cell.recipesImg?.sd_setImage(with: URL(string: cellRow.recipesAvatar! )!, completed: nil)
            cell.recipesLbl?.text = cellRow.recipesName
            cell.difficultyLbl?.text = cellRow.recipesDifficulty
            
            
        }
        let myCategory = recipes[indexPath.row]
        let detailVC = DetailsMenu(recipes: myCategory)
        navigationController?.pushViewController(detailVC, animated: true)
         RecipeTableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if isFiltering(){
            let cell: RecipesCells = (tableView.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as? RecipesCells)!
            let cellRow = filteredRecipes[indexPath.row]
            cell.recipesImg?.sd_setImage(with: URL(string: cellRow.recipesAvatar! )!, completed: nil)
            cell.recipesLbl?.text = cellRow.recipesName
            cell.difficultyLbl?.text = cellRow.recipesDifficulty
              return cell
            
        }else{
            let cell: RecipesCells = (tableView.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as? RecipesCells)!
            let cellRow = recipes[indexPath.row]
            cell.recipesImg?.sd_setImage(with: URL(string: cellRow.recipesAvatar! )!, completed: nil)
            cell.recipesLbl?.text = cellRow.recipesName
            cell.difficultyLbl?.text = cellRow.recipesDifficulty
            
              return cell
        }
        

      
        
        
    }
}
extension RecipeMenu: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
      searchFilter(searchController.searchBar.text!)
    }
}


