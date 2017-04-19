//
//  ViewController.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 12/6/16.
//  Copyright © 2016 Morgan Bailey. All rights reserved.
//

import UIKit
import os.log
import RealmSwift


class MovieViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
	
	//MARK: Properties
	@IBOutlet weak var movieTitleTextField: UITextField!
	@IBOutlet weak var releaseYearTextField: UITextField!
	@IBOutlet weak var ratedTextField: UITextField!
	@IBOutlet weak var actorsTextField: UITextField!
	@IBOutlet weak var actorsTextField2: UITextField!
	@IBOutlet weak var actorsTextField3: UITextField!
	@IBOutlet weak var actressTextField: UITextField!
	@IBOutlet weak var actressTextField2: UITextField!
	@IBOutlet weak var actressTextField3: UITextField!
	@IBOutlet weak var writersTextField: UITextField!
	@IBOutlet weak var writersTextField2: UITextField!
	@IBOutlet weak var writersTextField3: UITextField!
	@IBOutlet weak var directorsTextField: UITextField!
	@IBOutlet weak var directorsTextField2: UITextField!
	@IBOutlet weak var directorsTextField3: UITextField!
	@IBOutlet weak var movieDescriptionTextField: UITextField!
	@IBOutlet weak var genreTextField: UITextField!
	@IBOutlet weak var genreTextField2: UITextField!
	@IBOutlet weak var genreTextField3: UITextField!
	
	// Navigation Controls
	@IBOutlet weak var saveButton: UIBarButtonItem!
	
	
	/* This value is either passed by `MovieTableViewController` in `prepare(for:sender:)`
		or constructed as part of adding a new movie.
	*/
	var movie: Movie?
	
	var notificationToken: NotificationToken!
	var realm: Realm!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Handle the text field's input through delegate callbacks.
		movieTitleTextField.delegate = self
		releaseYearTextField.delegate = self
		ratedTextField.delegate = self
		actorsTextField.delegate = self
		actorsTextField2.delegate = self
		actorsTextField3.delegate = self
		actressTextField.delegate = self
		actressTextField2.delegate = self
		actressTextField3.delegate = self
		writersTextField.delegate = self
		writersTextField2.delegate = self
		writersTextField3.delegate = self
		directorsTextField.delegate = self
		directorsTextField2.delegate = self
		directorsTextField3.delegate = self
		movieDescriptionTextField.delegate = self
		genreTextField.delegate = self
		genreTextField2.delegate = self
		genreTextField3.delegate = self
	}
	
//	func setupRealm() {
//		// Log in existing user with username and password
//		let username = "test"
//		let password = "test"
//		
//		SyncUser.logIn(with: .usernamePassword(username: username, password: password, register: false), server: URL(string: "http://127.0.0.1:9080")!) { user, error in
//			guard let user = user else {
//				fatalError(String(describing: error))
//			}
//			
//			DispatchQueue.main.async {
//				// Open Realm
//				let configuration = Realm.Configuration(
//					syncConfiguration: SyncConfiguration(user: user, realmURL: URL(string: "realm://127.0.0.1:9080/~/cinemastock")!)
//				)
//				self.realm = try! Realm(configuration: configuration)
//				
////				func updateList() {
////					if self.items.realm == nil, let list = self.realm.objects(TaskList.self).first {
////						self.items = list.items
////					}
////					self.tableView.reloadData()
////				}
////				updateList()
////				
////				// Notify us when Realm changes
////				self.notificationToken = self.realm.addNotificationBlock { _ in
////					updateList()
////				}
//			}
//		}
//	}
//	
//	deinit {
//		notificationToken.stop()
//	}
	
	//MARK: UITextFieldDelegate
	
	// Movie title
	func movieTitileTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		movieTitleTextField.resignFirstResponder()
		//self.releaseYearTextField.becomeFirstResponder()
		return true
	}
	
	func movieTitleTextFieldDidEndEditing(_ textField: UITextField) {
		releaseYearTextField.becomeFirstResponder()
	}
	
	
	// Release year
	func releaseYearTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		releaseYearTextField.resignFirstResponder()
		return true
	}
	
	func releaseYearTextFieldDidEndEditing(_ textField: UITextField) {
		print(releaseYearTextField)
	}
	
	
	// Rated
	func ratedTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		ratedTextField.resignFirstResponder()
		return true
	}
	
	func movieRatedTextFieldDidEndEditing(_ textField: UITextField) {
		print(ratedTextField)
	}
	
	
	// Actors
	func actorsTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		actorsTextField.resignFirstResponder()
		return true
	}
	
	func actorsTextFieldDidEndEditing(_ textField: UITextField) {
		print(actorsTextField)
	}
	
	
	// Actress
	func actressTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		actressTextField.resignFirstResponder()
		return true
	}
	
	func actressTextFieldDidEndEditing(_ textField: UITextField) {
		print(actressTextField)
	}
	
	
	// Writers
	func writersTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		writersTextField.resignFirstResponder()
		return true
	}
	
	func writersTextFieldDidEndEditing(_ textField: UITextField) {
		print(writersTextField)
	}
	
	
	// Directors
	func directorsTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		directorsTextField.resignFirstResponder()
		return true
	}
	
	func directorsTextFieldDidEndEditing(_ textField: UITextField) {
		print(directorsTextField)
	}
	
	
	// Genres
	func genreTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		genreTextField.resignFirstResponder()
		return true
	}
	
	func genreTextFieldDidEndEditing(_ textField: UITextField) {
		print(genreTextField)
	}
	
	
	// Movie description
	func movieDescriptionTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		movieDescriptionTextField.resignFirstResponder()
		return true
	}
	
	
	// MARK: Navigation
	
	// This method lets you configure a view controller before it is presented
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		// Configure the destination view controller only when the save button is pressed.
		guard let button = sender as? UIBarButtonItem, button === saveButton else {
			os_log("The save button was not pressed, cancelling.", log: OSLog.default, type: .debug)
			return
		}
		
		let movie_ID = 0000
		let title = movieTitleTextField.text
		let year = releaseYearTextField.text
		let rated = ratedTextField.text
		
		let actor = actorsTextField.text
		//Actor.firstName = actor
		//List<Actor>().append(actor)
		
		let actress = actressTextField.text
		
		
		let writer = writersTextField.text
		
		
		let director = directorsTextField.text
		
		
		let genre = genreTextField.text
		
		
		let movieDescription = movieDescriptionTextField.text
		let userRating = 0
		let owned = true
		let loaned = false
		let inList = false
		
		 //Set the movie to be passed to MovieTableViewController after the unwind segue.
		movie = Movie(movie_ID: movie_ID, title: title!, year: year!, rated: rated!, actor: List<Actor>(), actress: List<Actress>(), writer: List<Writer>(), director: List<Director>(), genre: List<Genre>(), movieDescription: movieDescription!, userRating: userRating, owned: owned, loaned: loaned, inList: inList)
	}
	
	// Cancel Button
	@IBAction func cancel(_ sender: UIBarButtonItem) {
		dismiss(animated: true, completion: nil)
	}

	
	//MARK: Actions
	
	// Actor button
	@IBAction func addActorsButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		if (actorsTextField2.isHidden == true) {
			actorsTextField2.isHidden = false
		}
		else if (actorsTextField3.isHidden == true) {
			actorsTextField3.isHidden = false
		}
	}
	
	
	// Actress button
	@IBAction func addActressButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		if (actressTextField2.isHidden == true) {
			actressTextField2.isHidden = false
		}
		else if (actressTextField3.isHidden == true) {
			actressTextField3.isHidden = false
		}
	}
	
	
	// Writer button
	@IBAction func addWritersButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		if (writersTextField2.isHidden == true) {
			writersTextField2.isHidden = false
		}
		else if (writersTextField3.isHidden == true) {
			writersTextField3.isHidden = false
		}
	}
	
	
	// Director button
	@IBAction func addDirectorsButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		if (directorsTextField2.isHidden == true) {
			directorsTextField2.isHidden = false
		}
		else if (directorsTextField3.isHidden == true) {
			directorsTextField3.isHidden = false
		}
	}
	
	
	// Genre button
	@IBAction func addGenresButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		if (genreTextField2.isHidden == true) {
			genreTextField2.isHidden = false
		}
		else if (genreTextField3.isHidden == true) {
			genreTextField3.isHidden = false
		}
	}
	
	
	// MARK: Private Methods

}

