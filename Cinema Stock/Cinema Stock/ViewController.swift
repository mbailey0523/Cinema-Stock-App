//
//  ViewController.swift
//  Cinema Stock
//
//  Created by Morgan Colbert on 12/6/16.
//  Copyright © 2016 Morgan Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	
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
	}
	
	//MARK: UITextFieldDelegate
	
	// Movie title
	func movieTitleTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		movieTitleTextField.resignFirstResponder()
		return true
	}
	
	func movieTitleTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Release year
	func releaseYearTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func releaseYearTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Rated
	func ratedTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func ratedTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Actors
	func actorsTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func actorsTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Actress
	func actressTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func actressTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Writers
	func writersTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func writersTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Directors
	func directorsTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func directorsTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	// Movie description
	func movieDescriptionTextFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func movieDescriptionTextFieldDidEndEditing(_ textField: UITextField) {
		<#code#>
	}
	
	
	//MARK: Actions
	// Actor button
	@IBAction func addActorButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
		actorsTextField2.accessibilityElementsHidden = false
	}
	
	// Actress button
	@IBAction func addActressButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
	}
	
	// Writer button
	@IBAction func addWriterButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
	}
	
	// Director button
	@IBAction func addDirectorButton(_ sender: UIButton) {
		// unhide the text fields. probably need a simple for loop for this to only unhide one box at a time.
	}
}

