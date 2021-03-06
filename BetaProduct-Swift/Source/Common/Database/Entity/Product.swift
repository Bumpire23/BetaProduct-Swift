//
//  Product.swift
//  BetaProduct-Swift
//
//  Created by User on 11/7/17.
//  Copyright © 2017 User. All rights reserved.
//

class Product: BaseEntity {
    @NSManaged var name :               String
    @NSManaged var weblink :            String
    @NSManaged var productDescription : String
    @NSManaged var price :              String
    @NSManaged var priceDescription :   String
    @NSManaged var imageUrl :           String
    @NSManaged var imageThumbUrl :      String
    @NSManaged var imageCompanyUrl :    String
    @NSManaged var productId :          Int16
}
