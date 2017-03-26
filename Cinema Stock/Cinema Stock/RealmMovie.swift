//
//  RealmMovie.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/22/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift

class RealmMovie: Object {
	dynamic var movie_ID: Int = 0
	dynamic var title: String = ""
	dynamic var year: Int = 0000
	dynamic var rated: String = ""
	dynamic var actor: String = ""
	dynamic var actress: String = ""
	dynamic var writer: String = ""
	dynamic var director: String = ""
	dynamic var genre: String = ""
	dynamic var movie_description: String = ""
	dynamic var user_rating: Int = 0
	dynamic var owned: Bool = false
	dynamic var loaned: Bool = false
	dynamic var in_list: Bool = false
}

let realm = try! Realm()
