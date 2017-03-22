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
	
//	//Save Button
//	func textFieldDidBeginEditing(_ textField: UITextField) {
//		// Disable the Save button qhile editing
//		saveButton.isEnabled = false
//	}
	
	
	// MARK: Navigation
	
	// This method lets you configure a view controller before it is presented
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		// Configure the destination view controller only when the save button is pressed.
		guard let button = sender as? UIBarButtonItem, button === saveButton else {
			os_log("The saved button was not pressed, cancelling.", log: OSLog.default, type: .debug)
			return
		}
		
		let title = movieTitleTextField.text
		let year = releaseYearTextField.text
		let rating = ratedTextField.text
		let actor1 = actorsTextField.text ?? ""
		let actor2 = actorsTextField2.text ?? ""
		let actor3 = actorsTextField3.text ?? ""
		let actress1 = actressTextField.text ?? ""
		let actress2 = actressTextField2.text ?? ""
		let actress3 = actressTextField3.text ?? ""
		let writer1 = writersTextField.text
		let writer2 = writersTextField2.text ?? ""
		let writer3 = writersTextField3.text ?? ""
		let director1 = directorsTextField.text
		let director2 = directorsTextField2.text ?? ""
		let director3 = directorsTextField3.text ?? ""
		let genre1 = genreTextField.text
		let genre2 = genreTextField2.text ?? ""
		let genre3 = genreTextField3.text ?? ""
		let description = movieDescriptionTextField.text
			
		// Set the movie to be passed to MovieTableViewController after the unwind segue.
		movie = Movie(title: title!, year: year!, rated: rating!, actor1: actor1, actor2: actor2, actor3: actor3, actress1: actress1, actress2: actress2, actress3: actress3, writer1: writer1!, writer2: writer2, writer3: writer3, director1: director1!, director2: director2, director3: director3, genre1: genre1!, genre2: genre2, genre3: genre3, description: description!)
	}
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
	
//	private func updateSaveButtonState() {
//		// Disable the Save button if text field is empty
//		let titleText = movieTitleTextField.text
//		saveButton.isEnabled = titleText.isEmpty
//	}
	
	
}

