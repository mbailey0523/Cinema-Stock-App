//
//  Director.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class Director: Object {
	dynamic var director_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	//let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "director_ID"
	}
	
	// MARK: Initialization
	init(director_ID: Int, firstName: String, lastName: String) {
		super.init()
		
		// Initialize stored properties
		self.director_ID = director_ID
		self.firstName = firstName
		self.lastName = lastName
		//self.movies = List<Movie.movies>
	}
	
	required init(realm: RLMRealm, schema: RLMObjectSchema) {
		//fatalError("init(realm:schema:) has not been implemented")
		super.init()
	}
	
	required init(value: Any, schema: RLMSchema) {
		//fatalError("init(value:schema:) has not been implemented")
		super.init()
	}
	
	required init() {
		//fatalError("init() has not been implemented")
		super.init()
	}
	
	let directors = List<Director>()
	
	// MARK: Methods
	func addDirector() {
		let director1 = Director(director_ID: 0001, firstName: "", lastName: "")
		
		directors.append(director1)
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(director1)
		}
	}
}
