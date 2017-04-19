//
//  Movie.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/15/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit
import RealmSwift
import Realm


class Movie: Object {
	
	// MARK: Properties
	dynamic var movie_ID: Int = 0
	dynamic var title: String = ""
	dynamic var year: String = ""
	dynamic var rated: String = ""
	var actor = List<Actor>()
	var actress = List<Actress>()
	var writer = List<Writer>()
	var director = List<Director>()
	var genre = List<Genre>()
//	let actor = LinkingObjects(fromType: Actor.self, property: "actorMovies")
//	let actress = LinkingObjects(fromType: Actress.self, property: "actressMovies")
//	let writer = LinkingObjects(fromType: Writer.self, property: "writerMovies")
//	let director = LinkingObjects(fromType: Director.self, property: "directorMovies")
//	let genre = LinkingObjects(fromType: Genre.self, property: "genreMovies")
	dynamic var movieDescription: String = ""
	dynamic var userRating: Int = 0
	dynamic var owned: Bool = false
	dynamic var loaned: Bool = false
	dynamic var inList: Bool = false
	override open class func primaryKey() -> String? {
		return "movie_ID"
	}
	
	// MARK: Initialization
	init(movie_ID: Int, title: String, year: String, rated: String, actor: List<Actor>, actress: List<Actress>, writer: List<Writer>, director: List<Director>, genre: List<Genre>, movieDescription: String, userRating: Int, owned: Bool, loaned: Bool, inList: Bool) {
		super.init()
		
		// Initialize stored properties
		self.movie_ID = movie_ID
		self.title = title
		self.year = year
		self.rated = rated
//		self.actor = actor
//		self.actress = actress
//		self.writer = writer
//		self.director = director
//		self.genre = genre
		self.movieDescription = movieDescription
		self.userRating = userRating
		self.owned = owned
		self.loaned = loaned
		self.inList = inList
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
}







