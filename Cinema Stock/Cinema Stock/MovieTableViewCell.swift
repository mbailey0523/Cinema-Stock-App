//
//  MovieTableViewCell.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/21/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit
import RealmSwift

class MovieTableViewCell: UITableViewCell {
	
	// MARK: Properties
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var yearLabel: UILabel!
	@IBOutlet weak var ratingLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}

	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)

		// Configure the view for the selected state
	}

}
