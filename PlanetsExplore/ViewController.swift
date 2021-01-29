//
//  ViewController.swift
//  PlanetsExplore
//
//  Created by Suesawatwanich Chayapam on 28/1/2564 BE.
//  Copyright © 2564 Suesawatwanich Chayapam. All rights reserved.
//

import UIKit

class Planet {
    
    var	planetImage: UIImage? = nil
    var planetName: String = ""
    
    init(planetImage: UIImage, planetName: String) {
        self.planetImage = planetImage
        self.planetName  = planetName
    }
}

class ViewController: UIViewController {
    
    var list : [Planet] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        list.append(Planet(planetImage: #imageLiteral(resourceName: "earth"), planetName : "Earth"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "mars"), planetName : "Mars"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "venus"), planetName : "Venus"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "saturn"), planetName : "Saturn"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "jupiter"), planetName : "Jupiter"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "mercury"), planetName  : "Mercury"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "uranus"), planetName  : "Uranus"))
        list.append(Planet(planetImage: #imageLiteral(resourceName: "neptune"), planetName  : "Nepturn"))
    }


}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var modelAtIndex = list[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planet_itemview", for: indexPath) as! PlanetViewCell
        
        cell.bind(model: modelAtIndex)
        
        return cell
        
        
    }
    
}


