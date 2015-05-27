//
//  ViewController.swift
//  AppleStore
//
//  Created by Tapan Thaker on 27/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var products : [Product]!
    
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        products = ProductFactory.getProducts()
        
    }
    
    
    
    //MARK:- UITableViewDataSource methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var productCell = tableView.dequeueReusableCellWithIdentifier("productCell") as ProductCell!
        productCell.render(products[indexPath.row])
        
        return productCell
    }
    
    //MARK:- UITableViewDelegate methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showDetail") {
            var detailViewController = segue.destinationViewController as DetailViewController
            let selectedProduct = products[self.tableView.indexPathForSelectedRow()!.row]
            detailViewController.selectedProduct = selectedProduct
        }
    }
    
    
}

