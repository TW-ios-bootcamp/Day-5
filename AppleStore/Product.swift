import UIKit

class Product {
    
    private let thumbnailImageName : String
    
    let name : String
    let price : String
    let detailText : String
    let fullImageURL : String
    var isFavourite : Bool
    
    var thumbnailImage : UIImage? { get{
        return UIImage(named: thumbnailImageName)
        }
    }
    
    init(name: String, price: String, detailText: String,thumbnailImageName tName: String, fullImageName fName: String){
        self.name = name
        self.price = price
        self.detailText = detailText
        thumbnailImageName = tName
        fullImageURL = fName
        self.isFavourite = false
    }
}
