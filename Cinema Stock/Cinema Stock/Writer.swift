//
//  Writer.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class Writer: Object {
	dynamic var writer_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	//let movies = List<Movie>()
	override open class func primaryKey() -> String? {
		return "writer_ID"
	}
	
	// MARK: Initialization
	init(writer_ID: Int, firstName: String, lastName: String) {
		super.init()
		
		// Initialize stored properties
		self.writer_ID = writer_ID
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
//		fatalError("init() has not been implemented")
		super.init()
	}
	
	let writers = List<Writer>()
	
	// MARK: Methods
	func addWriter() {
		let writer1 = Writer(writer_ID: 0001, firstName: "", lastName: "")
		
		writers.append(writer1)
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(writer1)
		}
	}
}
