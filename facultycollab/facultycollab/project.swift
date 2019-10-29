//
//  project.swift
//  facultycollab
//
//  Created by Cameron Bardell on 2019-10-29.
//  Copyright © 2019 Cameron Bardell. All rights reserved.
//

import Foundation

struct prject: Identifiable {
    let description: String
    let title: String
    let tags: NSDictionary
    let url: String
    let id: String
    
    init(title: String, description: String, tags: NSDictionary, url: String, id: String) {
        self.title = title
        self.description = description
        self.tags = tags
        self.url = url
        self.id = id
    }
    
    
}
