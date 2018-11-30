//
//  DetailsMenu.swift
//  Recetaçaos
//
//  Created by LUCAS PAJARES PRIETO on 30/11/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class DetailsMenu: UIViewController {


    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var descTV: UITextView!
    @IBOutlet weak var ingredientsTV: UITextView!
    @IBOutlet weak var stepsTV: UITextView!
    @IBOutlet weak var mapBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapBtn.layer.cornerRadius = 5.8
        // Do any additional setup after loading the view.
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
