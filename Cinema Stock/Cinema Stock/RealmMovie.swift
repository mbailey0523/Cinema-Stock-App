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
	//let actor = List<Actor>()
	let actor = LinkingObjects(fromType: Actor.self, property: "movies")
	let actress = LinkingObjects(fromType: Actress.self, property: "movies")
	let writer = LinkingObjects(fromType: Writer.self, property: "movies")
	let director = LinkingObjects(fromType: Director.self, property: "movies")
	let genre = LinkingObjects(fromType: Genre.self, property: "movies")
	dynamic var movieDescription: String = ""
	dynamic var userRating: Int = 0
	dynamic var owned: Bool = false
	dynamic var loaned: Bool = false
	dynamic var inList: Bool = false
	override open class func primaryKey() -> String? {
		return "movie_ID"
	}
}
