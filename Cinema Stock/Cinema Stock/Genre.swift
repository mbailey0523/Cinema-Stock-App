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
	//let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "genre_ID"
	}
	
	// MARK: Initialization
	init(genre_ID: Int, genreName: String) {
		super.init()
		
		// Initialize stored properties
		self.genre_ID = genre_ID
		self.genreName = genreName
		//self.movies = List<Movie.movies>
	}
	
	required init(realm: RLMRealm, schema: RLMObjectSchema) {
		fatalError("init(realm:schema:) has not been implemented")
	}
	
	required init(value: Any, schema: RLMSchema) {
		fatalError("init(value:schema:) has not been implemented")
	}
	
	required init() {
		//fatalError("init() has not been implemented")
		super.init()
	}
	
	let genres = List<Genre>()
	
	// MARK: Methods
	func addActor() {
		let genre1 = Genre(genre_ID: 0001, genreName: "")
		
		genres.append(genre1)
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(genre1)
		}
	}
}
