//
//  DetailViewController.swift
//  AppleStore
//
//  Created by Tapan Thaker on 27/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fullImageView: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    var delegate: UpdateDataDelegate?
    
    var selectedProduct : Product?
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedProduct?.name
        fullImageView.image = selectedProduct?.fullImage
        detailTextView.text = selectedProduct?.detailText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addToFavouriteClicked(sender: AnyObject) {
        self.selectedProduct?.isFavourite = true
        self.delegate?.onProductUpdated(self.selectedProduct!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol UpdateDataDelegate {
    func onProductUpdated(product: Product)
}

