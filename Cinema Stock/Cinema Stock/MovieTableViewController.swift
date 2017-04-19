//
//  MovieTableViewController.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/21/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit
import RealmSwift


class MovieTableViewController: UITableViewController {
	
	// MARK: Properties
	let movies = List<Movie>()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Load the sample data.
		loadSampleMovies()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	

	// MARK: Table view data source
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movies.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// Table view cells are reused and should be dequeued using a cell identifier
		let cellIdentifier = "MovieTableViewCell"
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieTableViewCell else {
			fatalError("The dequeued cell is not an instance of MovieTableViewCell")
		}
		
		// Fetches the appropriate movie for the data source layout
		let movie = movies[indexPath.row]

		// Configure the cell...
		cell.titleLabel.text = movie.title
		cell.yearLabel.text = movie.year
		cell.ratingLabel.text = movie.rated

		return cell
	}

	
	// MARK: Actions
	@IBAction func unwindToMovieList(sender: UIStoryboardSegue) {
		if let sourceViewController = sender.source as? MovieViewController, let movie = sourceViewController.movie {
			// Add a new movie.
			let newIndexPath = IndexPath(row: movies.count, section: 0)
			movies.append(movie)
			tableView.insertRows(at: [newIndexPath], with: .automatic)
			
			let realm = try! Realm()
			
			try! realm.write {
				realm.add(movie)
			}
		}
	}

	
	// MARK: Private Methods
	private func loadSampleMovies(){
		let movie1 = Movie(movie_ID: 0001, title: "Beauty and the Beast", year: "1991", rated: "G", actor: List<Actor>(), actress: List<Actress>(), writer: List<Writer>(), director: List<Director>(), genre: List<Genre>(), movieDescription: "Belle, whose father is imprisoned by the Beast, offers herself instead, unaware her captor to be an enchanted prince.", userRating: 0, owned: true, loaned: false, inList: false)
		
		movies.append(movie1)
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(movie1)
		}
	}
}








