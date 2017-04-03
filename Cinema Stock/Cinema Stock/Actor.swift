//
//  Actor.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class Actor: Object {
	dynamic var actor_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "actor_ID"
	}
	
	// MARK: Initialization
//	init(actor_ID: Int, firstName: String, lastName: String, movies: List<Movie>) {
//		
//		// Initialize stored properties
//		self.actor_ID = actor_ID
//		self.firstName = firstName
//		self.lastName = lastName
//		//self.movies = List<Movie.movies>
//	}
	
	required init(realm: RLMRealm, schema: RLMObjectSchema) {
		fatalError("init(realm:schema:) has not been implemented")
	}
	
	required init(value: Any, schema: RLMSchema) {
		fatalError("init(value:schema:) has not been implemented")
	}
	
	required init() {
		fatalError("init() has not been implemented")
	}
	
	//let realm = try! Realm()
	
	// MARK: Methods
}
