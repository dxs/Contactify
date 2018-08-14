//
//  Contact.swift
//  Contactify
//
//  Created by Sven Borden on 13.08.18.
//  Copyright © 2018 ouay. All rights reserved.
//

import UIKit

class Contact {
    let first_name: String
    let last_name: String
    let category : String
    let company : String
    let position : String
    let work_phone : String
    let mobile_phone : String
    let email : String
    let where_we_met : String
    let what_provide : String
    let country : String
    let city : String
    
    
    ///Init of the class
    init()
    {
        self.first_name = "first_name"
        self.last_name = "last_name"
        self.category = "category"
        self.company = "company"
        self.position = "position"
        self.work_phone = "work_phone"
        self.mobile_phone = "mobile_phone"
        self.email = "email"
        self.where_we_met = "where_we_met"
        self.what_provide = "what_provide"
        self.country = "country"
        self.city = "city"
    }
    
    init(first_name: String, last_name: String, category: String, company: String, position: String, work_phone: String, mobile_phone: String, email: String, where_we_met: String, what_provide: String, country: String, city: String )
    {
        self.first_name = first_name
        self.last_name = last_name
        self.category = category
        self.company = company
        self.position = position
        self.work_phone = work_phone
        self.mobile_phone = mobile_phone
        self.email = email
        self.where_we_met = where_we_met
        self.what_provide = what_provide
        self.country = country
        self.city = city
    }
}
