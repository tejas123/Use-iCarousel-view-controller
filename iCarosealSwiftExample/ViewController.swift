//
//  ViewController.swift
//  iCarosealSwiftExample
//
//  Created by TheAppGuruz-New-6 on 12/08/15.
//  Copyright (c) 2015 TheAppGuruz-New-6. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {

    var images : NSMutableArray = NSMutableArray()
    var selectedIndex : Int!
    @IBOutlet var vwCarousel: iCarousel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = NSMutableArray(array: ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"])
        vwCarousel.type = iCarouselType.Cylinder
        vwCarousel .reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    //MARK: icarousel delegate methods
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int
    {
        return images.count
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView
    {
        var itemView: UIImageView
        if (view == nil)
        {
            itemView = UIImageView(frame:CGRect(x:0, y:0, width:200, height:200))
            itemView.contentMode = .ScaleAspectFit
        }
        else
        {
            itemView = view as! UIImageView;
        }
        itemView.image = UIImage(named: "\(images.objectAtIndex(index))")
        return itemView
    }
    
    func carousel(carousel: iCarousel, didSelectItemAtIndex index: Int) {
        selectedIndex = index
        self .performSegueWithIdentifier("imageDisplaySegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "imageDisplaySegue")
        {
            var viewController : ImageDisplayViewController = segue.destinationViewController as! ImageDisplayViewController
            viewController.selectedImage = UIImage(named: "\(images.objectAtIndex(selectedIndex))")
        }
    }
    
}

