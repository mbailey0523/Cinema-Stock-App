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
	
	// MARK: Propertities
	dynamic var movie_ID: Int = 0
	dynamic var title: String = ""
	dynamic var year: String = ""
	dynamic var rated: String = ""
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
	
//	// MARK: Initialization
//	init?(movie_ID: Int, title: String, year: String, rated: String, actor: LinkingObjects<Actor>, actress: LinkingObjects<Actress>, writer: LinkingObjects<Writer>, director: LinkingObjects<Director>, genre: LinkingObjects<Genre>, movieDescription: String, userRating: Int, owned: Bool, loaned: Bool, inList: Bool) {
//		
//		// Initialization should fail is there is .....
//		if title.isEmpty || year.isEmpty || rated.isEmpty || writer.isEmpty || director.isEmpty || genre.isEmpty || movieDescription.isEmpty{
//			return nil
//		}
//		
//		// Initialize stored properties
//		self.movie_ID = movie_ID
//		self.title = title
//		self.year = year
//		self.rated = rated
//		self.actor = actor
//		self.actress = actress
//		self.writer = writer
//		self.director = director
//		self.genre = genre
//		self.movieDescription = movieDescription
//		self.userRating = userRating
//		self.owned = owned
//		self.loaned = loaned
//		self.inList = inList
//	}
}
