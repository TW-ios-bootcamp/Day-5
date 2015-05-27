//
//  Product.swift
//  AppleStore
//
//  Created by Tapan Thaker on 27/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

import UIKit

class Product {
    
    private let fullImageName : String
    private let thumbnailImageName : String
    
    let name : String
    let price : String
    let detailText : String
    
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
    }
   
}
