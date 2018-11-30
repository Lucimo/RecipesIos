//
//  GeneralMenu.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 28/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import SDWebImage

class GeneralMenu: UIViewController {

    @IBOutlet weak var generalMenuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCategoryCells()
        load()

        // Do any additional setup after loading the view.
    }
    internal var categoryLabels: [CategoryLabels] = []
    internal var currentindex = 0
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func registerCategoryCells(){
        let identifier = "CategoryCells"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        generalMenuTableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    private func load(){
        let label_1 = CategoryLabels(titleCat: "Meat",titleNum: "4", foodAvatar: "meatCat", recipes: [Recipes(recipesAvatar: "https://www.simplyrecipes.com/wp-content/uploads/2009/06/beef-wellington-horiz-a2-1800.jpg", recipesName: "Beef Wellington", recipesDifficulty: "9/10", recipesDesc: "Beef fillet covered by a thin layer of dough crust", recipesIngredients: "Beef fillet, Mushrooms, homemade or premade dough", recipesSteps: "Crush the mushrooms and cover the dough leaving the edges free. Briefly pan fry the fillet on every side and cover it with the dough. Roast it in the oven at a low heat"),
                                                                                                      Recipes(recipesAvatar: "https://foodfornet.com/wp-content/uploads/Colombian-Style-Pork-Belly-Final-1.jpg", recipesName: "Roast Pork Belly", recipesDifficulty: "5/10", recipesDesc: "Slow cooked pork belly", recipesIngredients: "Pork belly cut, Fennel, Anis, Cardamom, Bayleaf", recipesSteps: "Pan fry the fat side of the pork belly. Flip it over and put in all your other ingredients. Fill the pan with white whine and broth without covering the fat side of the pork belly. Cook until boil and leave it in the oven for about 3 hours on a low temp"),
                                                                                                      Recipes(recipesAvatar: "https://images-gmi-pmc.edge-generalmills.com/b730af40-9810-4123-b8be-4d8c48aa85ef.jpg", recipesName: "Meat Fondue", recipesDifficulty: "2/10", recipesDesc: "Meat fondue with an assortment of sauces", recipesIngredients: "Oil, butter, meat, sauces", recipesSteps: "Heat up your oil and butter with a bit of herbs of your choice. Bring it to the table and enjoy dipping pieces of meat and cooking it at the table."),
                                                                                                      Recipes(recipesAvatar: "https://www.seriouseats.com/recipes/images/2012/03/20120301-tonkotsu-chashu-cha-siu-pork-belly-ramen-08.jpg", recipesName: "Chasu Pork", recipesDifficulty: "6/10", recipesDesc: "Crispy pork perfect for ramen dishes", recipesIngredients: "Pork belly, mirin, teriyaki sauce, sugar, sake ", recipesSteps: "Cover your meat with the different sauces and let it marinate for a while. Roll up the meat with a piece of string and pan fry it on all sizes")
            ])
        let label_2 = CategoryLabels(titleCat: "Fish",titleNum: "4", foodAvatar: "fishCat", recipes: [Recipes(recipesAvatar: "http://north19.co.uk/wp-content/uploads/2011/12/Turbot-capers-shallots.jpg", recipesName: "Roast Turbot", recipesDifficulty:"7/10", recipesDesc: "Roast turbot with mashed potato and capers", recipesIngredients: "Turbot, capers, potatos", recipesSteps: "Roast your turbot in the oven while you boil your potatos until soft. Boil your capers in butter and serve "),
                                                                                                      Recipes(recipesAvatar: "https://www.walterpurkisandsons.com/wp-content/uploads/2016/05/fried-lemon-sole.jpg", recipesName: "Fried Sole", recipesDifficulty: "4/10", recipesDesc: "Fried sole with lemon", recipesIngredients: "sole, lemon, flour", recipesSteps: "Cover your sole with flour and fry."),
                                                                                                      Recipes(recipesAvatar: "https://www.canalcocina.es/medias/images/0905coc_salmonetesrellenosdesetas.jpg", recipesName: "Fried Mullets", recipesDifficulty: "4/10", recipesDesc: "Fried mullets with lemon", recipesIngredients: "Mullets, lemon, flour", recipesSteps: "Cover mullets with flour and fry"),
                                                                                                      Recipes(recipesAvatar: "http://www.oksfood.com/image/nigirizushi_maguro.jpg", recipesName: "Maguro Nigri", recipesDifficulty: "6/10", recipesDesc: "High fat tuna nigri sushi", recipesIngredients: "Rice, Tuna, mirin", recipesSteps: "Mix up some mirin with the rice. Cut thin slices of tuna and place them on bundles of rice")
            ])
        
        let label_3 = CategoryLabels(titleCat: "Poultry",titleNum: "4", foodAvatar: "poultryCat", recipes: [Recipes(recipesAvatar: "https://www.simplyrecipes.com/wp-content/uploads/2015/09/roasted-chicken-apricot-glaze-horiz-a-1500.jpg", recipesName: "Roast Chicken", recipesDifficulty: "4/10", recipesDesc: "Slow cooked roast chicken", recipesIngredients: "Whole chicken, lemon, thime", recipesSteps: "Cover the chicken with herbs and oil. Put the chopped lemon inside and slow cook for a few hours in the oven"),
                                                                                                            Recipes(recipesAvatar: "https://cdn-image.myrecipes.com/sites/default/files/styles/medium_2x/public/image/recipes/sl/03142008/grilled-quail-sl-257649-x.jpg?itok=ykCBg2AC", recipesName: "Grilled Quail", recipesDifficulty: "7/10", recipesDesc: "Asian style grilled quail", recipesIngredients: "Whole Quail, teriyaki sauce, sugar, mirin", recipesSteps: "Cover the qual with the sauces and slow roast"),
                                                                                                            Recipes(recipesAvatar: "https://comerjapones.com/wp-content/uploads/karaage.jpg", recipesName: "Karaage", recipesDifficulty: "6/10", recipesDesc: "Asian fried chicken bits", recipesIngredients: "CHicken bits, flour, lemon, lettuce", recipesSteps: "Deep fry the chicken bits, serve with leon and lettuce"),
                                                                                                            Recipes(recipesAvatar: "https://assets.marthastewart.com/styles/wmax-750/d23/peking-duck-054-d111532/peking-duck-054-d111532_horiz.jpg?itok=kaIcvf_u", recipesName: "Peking Duck", recipesDifficulty: "7/10", recipesDesc: "Whole peking duck", recipesIngredients: "Peking duck, dumpling doudh, onion, teriyaki sauce", recipesSteps: "Cut the duck in thin slices. Serve wrapped in dumpling dough with onion and sauce")
            ])
        let label_4 = CategoryLabels(titleCat: "Vegetables",titleNum: "4", foodAvatar: "vegetablesCat", recipes: [Recipes(recipesAvatar: "https://cravelocal.com/wp-content/uploads/2013/11/Ruths-Chris-Creamed-Spinach-Recipe-Original.jpg", recipesName: "Spinach Bechamel", recipesDifficulty: "7/10", recipesDesc: "Spinach Bechamel", recipesIngredients: "Spinach, cooking cream, flour, butter", recipesSteps: "Prepare bechamel by heating up the mixture. Pan fry the spinach and mix well"),
                                                                                                                  Recipes(recipesAvatar: "https://ep01.epimg.net/elcomidista/imagenes/2018/04/12/receta/1523529562_009729_1523535645_media_normal.jpg", recipesName: "Sauteed Calçots", recipesDifficulty: "5/10", recipesDesc: "Sauteed Calçots with sauces", recipesIngredients: "Fresh calçots, sauces, oil", recipesSteps: "Pan fry the calçots and serve with sauces"),
                                                                                                                  Recipes(recipesAvatar: "https://www.savorytooth.com/wp-content/uploads/2016/07/artichoke-square3.jpg", recipesName: "Boiled Artichokes w/Mayonnaise", recipesDifficulty: "4/10", recipesDesc: "Artichokes dipped in mayo", recipesIngredients: "Mayonaise, Artichokes", recipesSteps: "Boil the artichokes until soft and serve whole with a mayo dip"),
                                                                                                                  Recipes(recipesAvatar: "https://scm-assets.constant.co/scm/unilever/1db348501df1238f872479d225e08c34/b9df19fe-02a1-4ccb-987e-ce7dff34dcf9.jpg", recipesName: "Potato Salad", recipesDifficulty: "2/10", recipesDesc: "Refreshing potato salad", recipesIngredients: "Potatos, lettuce, onion, tuna, egg", recipesSteps: "Chop the lettuce and onion, boil the eggs and potatos. Mix in bowl with canned tuna.")
            ])
        
        categoryLabels = [label_1, label_2, label_3, label_4]
        
        
        
        
      
        
      
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

extension GeneralMenu: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections ( in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        
        return 4
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return "CATEGORIES                                           NUMBER"
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myCategory = categoryLabels[indexPath.row]
        let recipeVC = RecipeMenu(recipes: myCategory.recipes)
        navigationController?.pushViewController(recipeVC, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CategoryCells = (tableView.dequeueReusableCell(withIdentifier: "CategoryCells", for: indexPath) as? CategoryCells)!
        let cellRow = categoryLabels[indexPath.row]
        cell.categoryImg?.image = UIImage(named: cellRow.foodAvatar!)
        cell.catLbl?.text = cellRow.titleCat
        cell.numLbl?.text = cellRow.titleNum
        cell.accessoryType = .disclosureIndicator
        return cell
        
        
}
}
