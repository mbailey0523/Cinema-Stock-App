//
//  Movie.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/15/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit
import RealmSwift

class Movie: Object {
	
	// MARK: Properties
	dynamic var movie_ID: Int = 0
	dynamic var title: String
	dynamic var year: String
	dynamic var rated: String
	dynamic var actor: Actor?
	dynamic var actress: Actress?
	dynamic var writer: Writer
	dynamic var director: Director
	dynamic var genre: Genre
	dynamic var movieDescription: String
	dynamic var userRating: Int = 0
	dynamic var owned: Bool = false
	dynamic var loaned: Bool = false
	dynamic var inList: Bool = false
	override open class func primaryKey() -> String? {
		return "movie_ID"
	}
	
	// MARK: Initialization
	init(movie_ID: Int, title: String, year: String, rated: String, actor: Actor?, actress: Actress?, writer: Writer, director: Director, genre: Genre, movieDescription: String, userRating: Int, owned: Bool, loaned: Bool, inList: Bool) {
		
		// Initialize stored properties
		self.movie_ID = movie_ID
		self.title = title
		self.year = year
		self.rated = rated
		self.actor = actor
		self.actress = actress
		self.writer = writer
		self.director = director
		self.genre = genre
		self.movieDescription = movieDescription
		self.userRating = userRating
		self.owned = owned
		self.loaned = loaned
		self.inList = inList
	}
	
//	required init(realm: Realm, schema: ObjectSchema) {
//		fatalError("init(realm:schema:) has not been implemented")
//	}
//	
//	required init() {
//		fatalError("init() has not been implemented")
//	}
//	
//	required init(value: Any, schema: ObjectSchema) {
//		fatalError("init(value:schema:) has not been implemented")
//	}
//	
//	let movie = try! Realm()
}






