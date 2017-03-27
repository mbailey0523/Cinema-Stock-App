//
//  RealmActress.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 3/26/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import Foundation
import RealmSwift

class RealmActress: Object {
	dynamic var actress_ID: Int = 0
	dynamic var firstName: String = ""
	dynamic var lastName: String = ""
	override open class func primaryKey() -> String? {
		return "actress_ID"
	}
}
