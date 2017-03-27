//
//  RealmDirector.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift

class RealmDirector: Object {
	dynamic var director_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	override open class func primaryKey() -> String? {
		return "director_ID"
	}
}
