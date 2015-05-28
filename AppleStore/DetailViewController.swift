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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var delegate: UpdateDataDelegate?
    var selectedProduct : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        let task = session.dataTaskWithURL(NSURL(string: selectedProduct!.fullImageURL)!, completionHandler: { (data, response, error) -> Void in
            var image = UIImage(named: "not_available")
            if(error == nil){
                image = UIImage(data: data)
            }
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.activityIndicator.hidden = true
                self.fullImageView.image = image
            })
        })
        task.resume()
        titleLabel.text = selectedProduct?.name
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
}

protocol UpdateDataDelegate {
    func onProductUpdated(product: Product)
}

