//
//  Genre.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class Genre: Object {
	dynamic var genre_ID: Int = 0
	dynamic var genreName: String = ""
	let genreMovies = LinkingObjects(fromType: Movie.self, property: "genre")
	override open class func primaryKey() -> String? {
		return "genre_ID"
	}
	
	// MARK: Initialization
	init(genre_ID: Int, genreName: String) {
		super.init()
		
		// Initialize stored properties
		self.genre_ID = genre_ID
		self.genreName = genreName
	}
	
	required init(realm: RLMRealm, schema: RLMObjectSchema) {
		super.init()
	}
	
	required init(value: Any, schema: RLMSchema) {
		super.init()
	}
	
	required init() {
		super.init()
	}
	
	let genres = List<Genre>()
	
	// MARK: Methods
	func addGenre() {
		let genre1 = Genre(genre_ID: 0001, genreName: "")
		
		genres.append(genre1)
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(genre1)
		}
	}
}
