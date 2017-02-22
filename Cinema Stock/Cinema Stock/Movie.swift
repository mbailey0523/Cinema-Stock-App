//
//  Movie.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/15/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit

class Movie {
	
	// MARK: Properties
	var title: String
	var year: String
	var rated: String
	var actor1: String?
	var actor2: String?
	var actor3: String?
	var actress1: String?
	var actress2: String?
	var actress3: String?
	var writer1: String
	var writer2: String?
	var writer3: String?
	var director1: String
	var director2: String?
	var director3: String?
	var genre1: String
	var genre2: String?
	var genre3: String?
	var description: String
	
	
	// MARK: Initialization
	init?(title: String,
	     year: String,
	     rated: String,
	     actor1: String?,
	     actor2: String?,
	     actor3: String?,
	     actress1: String?,
	     actress2: String?,
	     actress3: String?,
	     writer1: String,
	     writer2: String?,
	     writer3: String?,
	     director1: String,
	     director2: String?,
	     director3: String?,
	     genre1: String,
	     genre2: String?,
	     genre3: String?,
	     description: String) {
		
		// Initialization should fail if there is no title, year, rate, writer, director, or description
		if title.isEmpty || year.isEmpty || rated.isEmpty || writer1.isEmpty || director1.isEmpty || genre1.isEmpty || description.isEmpty {
			return nil
		}
		
		// Initialize stored properties
		self.title = title
		self.year = year
		self.rated = rated
		self.actor1 = actor1
		self.actor2 = actor2
		self.actor3 = actor3
		self.actress1 = actress1
		self.actress2 = actress2
		self.actress3 = actress3
		self.writer1 = writer1
		self.writer2 = writer2
		self.writer3 = writer3
		self.director1 = director1
		self.director2 = director2
		self.director3 = director3
		self.genre1 = genre1
		self.genre2 = genre2
		self.genre3 = genre3
		self.description = description
	}
}






