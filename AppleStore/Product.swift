import UIKit

class Product {
    
    private let fullImageName : String
    private let thumbnailImageName : String
    
    let name : String
    let price : String
    let detailText : String
    var isFavourite : Bool
    
    var fullImage : UIImage? { get{
        return UIImage(named: fullImageName)
        }
    }
    
    var thumbnailImage : UIImage? { get{
        return UIImage(named: thumbnailImageName)
        }
    }
    
    init(name: String, price: String, detailText: String,thumbnailImageName tName: String, fullImageName fName: String){
        self.name = name
        self.price = price
        self.detailText = detailText
        fullImageName = fName
        thumbnailImageName = tName
        self.isFavourite = false
    }
}
