//
//  ImageDisplayViewController.swift
//  iCarosealSwiftExample
//
//  Created by TheAppGuruz-New-6 on 13/08/15.
//  Copyright (c) 2015 TheAppGuruz-New-6. All rights reserved.
//

import UIKit

class ImageDisplayViewController: UIViewController {

    var selectedImage : UIImage!
    @IBOutlet weak var ivDisplayImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ivDisplayImage.image = selectedImage
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBackClicked(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
