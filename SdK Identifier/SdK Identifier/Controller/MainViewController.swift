//
//  MainViewController.swift
//  SdK Identifier
//
//  Created by Luciano Schillagi on 20/11/2018.
//  Copyright © 2018 luko. All rights reserved.
//

/* Controller */

import UIKit
import Foundation

// Model
struct User {
	var name: String = ""
	var age: String = ""
	var genre: String = ""
	var headache: Bool? = nil
	var alcohol: Bool? = nil
}

class MainViewController: UIViewController {
	
	//*****************************************************************
	// MARK: - IBOutlets
	//*****************************************************************
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var yourNameTextField: UITextField!
	@IBOutlet weak var ageTextField: UITextField!
	@IBOutlet weak var genreTextField: UITextField!
	@IBOutlet weak var headacheTextField: UITextField!
	@IBOutlet weak var alcoholTextField: UITextField!
	@IBOutlet weak var sendButton: UIButton!
	
	//*****************************************************************
	// MARK: - Properties
	//*****************************************************************
	
	var user = User()
	
	//*****************************************************************
	// MARK: - VC Life Cycle
	//*****************************************************************

	override func viewDidLoad() {
		super.viewDidLoad()
		navigationItem.title = "Síndrome de Kann Test"
	}

	
	//*****************************************************************
	// MARK: - IBActions
	//*****************************************************************
	@IBAction func username(_ sender: UITextField) {
		UserDefaults.standard.set(sender.text, forKey: "name")
	}
	
	@IBAction func ageEntry(_ sender: UITextField) {
		UserDefaults.standard.set(sender.text, forKey: "age")
	}
	
	@IBAction func genreEntry(_ sender: UITextField) {
		
		if sender.text == "femenino" {
			UserDefaults.standard.set(true, forKey: "genre")
		} else if sender.text == "masculino" {
			UserDefaults.standard.set(false, forKey: "genre")
		}
		
	}
	
	@IBAction func headacheEntry(_ sender: UITextField) {
		
		if sender.text == "Sí" {
			UserDefaults.standard.set(true, forKey: "headache")
		} else if sender.text == "No" {
			UserDefaults.standard.set(false, forKey: "headache")
		}
		
	}
	@IBAction func alcoholEntry(_ sender: UITextField) {
		
		if sender.text == "Sí" {
			UserDefaults.standard.set(true, forKey: "alcohol")
		} else if sender.text == "No" {
			UserDefaults.standard.set(false, forKey: "alcohol")
		}
		
	}
	
	@IBAction func senderPressed(_ sender: UIButton) {
		
		let name = UserDefaults.standard.string(forKey: "name")
		let age = UserDefaults.standard.string(forKey: "age")
		let genre = UserDefaults.standard.bool(forKey: "genre")
		let headache = UserDefaults.standard.bool(forKey: "headache")
		let alcohol = UserDefaults.standard.bool(forKey: "alcohol")
		
		print(name, age, genre, headache, alcohol)
		
	}



}

