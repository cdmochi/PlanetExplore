//
//  PlanetZoomViewController.swift
//  PlanetsExplore
//
//  Created by Suesawatwanich Chayapam on 28/1/2564 BE.
//  Copyright © 2564 Suesawatwanich Chayapam. All rights reserved.
//

import UIKit

class PlanetZoomViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var planetName: UILabel!
    
    var modelTapped : Planet? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        planetImage.image = modelTapped?.planetImage
        planetName.text = modelTapped?.planetName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
