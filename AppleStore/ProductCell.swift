import UIKit


class ProductCell: UITableViewCell {

    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func render (product: Product) {
        self.previewImageView.image = product.thumbnailImage
        self.titleLabel.text = product.name
        self.priceLabel.text = product.price
        if (product.isFavourite){
            self.favImageView.image = UIImage(named: "fav-yes.png")
        }else {
            self.favImageView.image = UIImage(named: "fav-no.png")
        }
        
    }

}
    
    

