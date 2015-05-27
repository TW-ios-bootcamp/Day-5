import UIKit


class ProductCell: UITableViewCell {

    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

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
    }

}
    
    

