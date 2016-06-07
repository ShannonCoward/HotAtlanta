//
//  PhotosVC.swift
//  HotAtlanta
//
//  Created by Shannon Coward on 5/30/16.
//  Copyright © 2016 Shannon Coward. All rights reserved.
//

import UIKit

class PhotosVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var photosCollectionView: UICollectionView!
    
    let placesTitles = ["Centennial Park", "Egewood", "Fox Atlanta", "Aquarium", "Midtown", "Lil Five Points"]
    
    let photosArray = [UIImage(named: "centPark"),UIImage(named: "edgewood"), UIImage(named: "foxAtlanta"),UIImage(named:"aquarium"),UIImage(named:"nightDrop"), UIImage(named:"lilFivePoint")]
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.placesTitles.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! PhotosCollectionViewCell
        
            cell.imgView?.image = self.photosArray[indexPath.row]
        
            cell.titleLbl?.text = self.placesTitles[indexPath.row]
        
            return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showImage" {
        
            let vc = segue.destinationViewController as! NewViewController
            
            if let indexPaths = self.photosCollectionView!.indexPathsForSelectedItems() where indexPaths.count > 0 {
            let indexPath = indexPaths[0] 
                
            vc.image = self.photosArray[indexPath.row]!
            vc.title = self.placesTitles[indexPath.row]
            }
        }
    }
}
