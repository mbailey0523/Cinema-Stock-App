//
//  MovieTableViewCell.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/21/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
	
	// MARK: Properties
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var yearLabel: UILabel!
	@IBOutlet weak var ratingLabel: UILabel!
	@IBOutlet weak var actor1Label: UILabel!
	@IBOutlet weak var actress1Label: UILabel!
	@IBOutlet weak var writer1Label: UILabel!
	@IBOutlet weak var director1Label: UILabel!
	@IBOutlet weak var genre1Label: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}

	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)

		// Configure the view for the selected state
	}

}
