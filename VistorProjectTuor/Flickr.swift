//
//  Flickr.swift
//  VistorProjectTuor
//
//  Created by Ndoo H on 03/02/2019.
//  Copyright © 2019 Ndoo H. All rights reserved.
//

import Foundation
enum Flickr {
    
    // API related
    static let FlickrBaseURL = "https://api.flickr.com/services/rest/"
    static let PhotoSearchMethod = "flickr.photos.search"
    static let PhotoSearchRadius = "1"
    static let Photos = "photos"
    static let Photo = "photo"
    static let PerPage = "50"
    
    
    // Dictionary keys
    static let Title = "title"
    static let ID = "id"
    static let ImagePath = "url_m"
    
    // Error codes
    static let networkError = 1
    static let requestError = 2
    static let noDataError = 3
    static let parseError = 4
    static let noPhotoDataError = 5
}
