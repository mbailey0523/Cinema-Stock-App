//
//  RealmGenre.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift

class RealmGenre: Object {
	dynamic var genre_ID: Int = 0
	dynamic var genreName: String = ""
	override open class func primaryKey() -> String? {
		return "genre_ID"
	}
}
