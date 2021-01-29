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
    
    func navigateToNextScreen(model: Planet) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "planetZoomVC") as! PlanetZoomViewController
        newViewController.modelTapped = model
                self.present(newViewController, animated: true, completion: nil)
    }
    
    
 

}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let modelAtIndex = list[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planet_itemview", for: indexPath) as! PlanetViewCell
        
        cell.bind(model: modelAtIndex)
//        cell.addGestureRecognizer(
//            UITapGestureRecognizer(
//            target:self,
//            action: #selector(tap(_:))
//            )
//        )
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let modelAtIndex = list[indexPath.row]
        navigateToNextScreen(model :modelAtIndex)
    }
    
//    @objc func tap(_ sender: UITapGestureRecognizer) {
//
//        let index = sender.index
//        navigateToNextScreen()
//    }
    
 
  
}




