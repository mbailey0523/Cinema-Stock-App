//
//  Actress.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class Actress: Object {
	dynamic var actress_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	//let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "actress_ID"
	}
	
	// MARK: Initialization
	init(actress_ID: Int, firstName: String, lastName: String) {
		super.init()
		
		// Initialize stored properties
		self.actress_ID = actress_ID
		self.firstName = firstName
		self.lastName = lastName
		//self.movies = List<Movie.movies>
	}
	
	required init(realm: RLMRealm, schema: RLMObjectSchema) {
		fatalError("init(realm:schema:) has not been implemented")
	}
	
	required init(value: Any, schema: RLMSchema) {
		fatalError("init(value:schema:) has not been implemented")
	}
	
	required init() {
		fatalError("init() has not been implemented")
	}
	
	var actresses = [Actress]()
	
	// MARK: Methods
	func addActress() {
		let actress1 = Actress(actress_ID: 0001, firstName: "", lastName: "")
		
		actresses += [actress1]
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(actress1)
		}
	}
}
