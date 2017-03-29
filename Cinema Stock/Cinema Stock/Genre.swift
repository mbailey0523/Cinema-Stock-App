//
//  Genre.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift

class Genre: Object {
	dynamic var genre_ID: Int = 0
	dynamic var genreName: String = ""
	let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "genre_ID"
	}
	
	public override init(value: Any) {
		
	}
}
