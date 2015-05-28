import UIKit

class ViewController: UIViewController,UITableViewDataSource,UpdateDataDelegate {
    
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
        
        var productCell = tableView.dequeueReusableCellWithIdentifier("productCell") as! ProductCell
        productCell.render(products[indexPath.row])
        
        return productCell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showDetail") {
            var detailViewController = segue.destinationViewController as! DetailViewController
            let selectedProduct = products[self.tableView.indexPathForSelectedRow()!.row]
            detailViewController.delegate = self
            detailViewController.selectedProduct = selectedProduct
        }
    }
    
    func onProductUpdated(product: Product) {
        tableView.reloadData()
    }
    
    
}

