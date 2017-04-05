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
		let movie1 = Movie(movie_ID: 0001, title: "Beauty and the Beast", year: "1991", rated: "G", actor: Actor(actor_ID: 0001, firstName: "", lastName: ""), actress: Actress(actress_ID: 0001, firstName: "", lastName: ""), writer: Writer(writer_ID: 0001, firstName: "", lastName: ""), director: Director(director_ID: 0001, firstName: "", lastName: ""), genre: Genre(genre_ID: 0001, genreName: ""), movieDescription: "Belle, whose father is imprisoned by the Beast, offers herself instead, unaware her captor to be an enchanted prince.", userRating: 0, owned: true, loaned: false, inList: false)
		
		movies += [movie1]
		
		let realm = try! Realm()
		
		try! realm.write {
			realm.add(movie1)
		}
	}
}








