//
//  MovieTableViewController.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 2/21/17.
//  Copyright © 2017 Morgan Bailey. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
	
	// MARK: Properties
	var movies = [Movie]()

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
		cell.actor1Label.text = movie.actor1
		cell.actress1Label.text = movie.actress1
		cell.writer1Label.text = movie.writer1
		cell.director1Label.text = movie.director1
		cell.genre1Label.text = movie.genre1
		cell.descriptionLabel.text = movie.description

		return cell
	}

	/*
	// Override to support conditional editing of the table view.
	override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		// Return false if you do not want the specified item to be editable.
		return true
	}
	*/

	/*
	// Override to support editing the table view.
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			// Delete the row from the data source
			tableView.deleteRows(at: [indexPath], with: .fade)
		} else if editingStyle == .insert {
			// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
		}
	}
	*/

	/*
	// Override to support rearranging the table view.
	override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

	}
	*/

	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
		// Return false if you do not want the item to be re-orderable.
		return true
	}
	*/

	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
	}
	*/
	
	
	// MARK: Actions
	@IBAction func unwindToMovieList(sender: UIStoryboardSegue) {
		if let sourceViewController = sender.source as? MovieViewController, let movie = sourceViewController.movie {
			// Add a new movie.
			let newIndexPath = IndexPath(row: movies.count, section: 0)
			movies.append(movie)
			tableView.insertRows(at: [newIndexPath], with: .automatic)
		}
	}
	
	
	// MARK: Private Methods
	private func loadSampleMovies(){
		guard let movie1 = Movie(title: "Beauty and the Beast", year: "1991", rated: "G", actor1: "Robby Benson", actor2: "", actor3: "", actress1: "Paige O'Hara", actress2: "", actress3: "", writer1: "Linda Woolverton", writer2: "Brenda Chapman", writer3: "", director1: "Gary Trousdale", director2: "Kirk Wise", director3: "", genre1: "Animation", genre2: "Family", genre3: "Musical", description: "Belle, whose father is imprisoned by the Beast, offers herself instead, unaware her captor to be an enchanted prince.")
		else {
			fatalError("Unable to instantiate movie1.")
		}
		
		guard let movie2 = Movie(title: "She's the Man", year: "2006", rated: "PG-13", actor1: "Channing Tatum", actor2: "", actor3: "", actress1: "Amanda Bynes", actress2: "", actress3: "", writer1: "Ewan Leslie", writer2: "Karen McCullah", writer3: "", director1: "Andy Fickman", director2: "", director3: "", genre1: "Comedy", genre2: "Romance", genre3: "Sport", description: "When her brother decides to ditch for a couple weeks in London, Viola heads over to his elite boarding school, disguises herself as him, and procedes to fall for one of her soccer teammates. Little does she realize she's not the only one with romantic troubles, as she, as he, gets in the middle of a series of intermingled love affairs.")
		else {
			fatalError("Unable to instantiate movie2.")
		}
		
		guard let movie3 = Movie(title: "21 Jump Street", year: "2012", rated: "R", actor1: "Jonah Hill", actor2: "Channing Tatum", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Michael Bacall", writer2: "", writer3: "", director1: "Phil Lord", director2: "Christopher Miller", director3: "", genre1: "Action", genre2: "Comedy", genre3: "Crime" , description: "A pair of underachieved cops are sent back to a local high school to blend in and bring down a synthetic drug ring.")
		else {
			fatalError("Unable to instantiate movie3.")
		}
		
		movies += [movie1, movie2, movie3]
	}

}








