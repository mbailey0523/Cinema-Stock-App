//
//  Cinema_StockTests.swift
//  Cinema StockTests
//
//  Created by Morgan Colbert on 12/6/16.
//  Copyright © 2016 Morgan Bailey. All rights reserved.
//

import XCTest
@testable import Cinema_Stock

class Cinema_StockTests: XCTestCase {
	
	// MARK: Movie Class Unit Tests
	
	// Confirm that the Movie initializer returns a Movie object when passed valid parameters
	func testMovieInitializationSucceeds() {
		
		// Only required fields filled
		let requiredFieldsMovie = Movie.init(title: "Movie Title", year: "1234", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This is a movie about how movies are movies.")
		XCTAssertNotNil(requiredFieldsMovie)
		
		// All fields filled
		let allFieldsFilled = Movie.init(title: "Movie Title", year: "1234", rated: "G", actor1: "Actor1 Actor1", actor2: "Actor2 Actor2", actor3: "Actor3 Actor3", actress1: "Actress1 Actress1", actress2: "Actress2 Actress2", actress3: "Actress3 Actress3", writer1: "Writer McWriterson", writer2: "Writer2 Writer2", writer3: "Writer3 Writer3", director1: "Director Directorman", director2: "Director2 Director2", director3: "Director3 Director3", description: "This movie is a movie about how movies are movies.")
		XCTAssertNotNil(allFieldsFilled)
		
	}
	
	func testMovieInitializerFails() {
		
		// Empty Title
		let emptyTitleMovie = Movie.init(title: "", year: "1234", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
		XCTAssertNil(emptyTitleMovie)
		
		// Empty Year
		let emptyYearMovie = Movie.init(title: "Movie Title", year: "", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
		XCTAssertNil(emptyYearMovie)
		
		// Year is a number
//		let numberYearMovie = Movie.init(title: "Movie Title", year: 1234, rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
//		XCTAssertNil(numberYearMovie)
		
		// Empty Rated
		let emptyRatedMovie = Movie.init(title: "Movie Title", year: "1234", rated: "", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
		XCTAssertNil(emptyRatedMovie)
		
		// Empty Writer1
		let emptyWriter1Movie = Movie.init(title: "Movie Title", year: "1234", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
		XCTAssertNil(emptyWriter1Movie)
		
		// Empty Director1
		let emptyDirector1Movie = Movie.init(title: "Movie Title", year: "1234", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "", director2: "", director3: "", description: "This movie is a movie about how movies are movies.")
		XCTAssertNil(emptyDirector1Movie)
		
		// Empty Description
		let emptyDescriptionMovie = Movie.init(title: "Movie Title", year: "1234", rated: "G", actor1: "", actor2: "", actor3: "", actress1: "", actress2: "", actress3: "", writer1: "Writer McWriterson", writer2: "", writer3: "", director1: "Director Directorman", director2: "", director3: "", description: "")
		XCTAssertNil(emptyDescriptionMovie)
	}
    
}
