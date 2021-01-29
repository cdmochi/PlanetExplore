//
//  PlanetViewCell.swift
//  PlanetsExplore
//
//  Created by Suesawatwanich Chayapam on 28/1/2564 BE.
//  Copyright © 2564 Suesawatwanich Chayapam. All rights reserved.
//

import UIKit

class PlanetViewCell: UICollectionViewCell {
    
    @IBOutlet var planetImage: UIImageView!
    
    @IBOutlet var planetName: UILabel!
    

    func bind(model: Planet) {
        self.planetImage.image = model.planetImage
        self.planetName.text = model.planetName
    }
}
