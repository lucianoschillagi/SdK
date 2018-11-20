//
//  ResultViewController.swift
//  SdK Identifier
//
//  Created by Luciano Schillagi on 20/11/2018.
//  Copyright © 2018 luko. All rights reserved.
//

/* Controller */

import UIKit

class ResultViewController: UIViewController {

	//*****************************************************************
	// MARK: - IBOutlets
	//*****************************************************************
	@IBOutlet weak var messageName: UILabel!
	@IBOutlet weak var probabilityLabel: UILabel!
	@IBOutlet weak var messageBodyLabel: UILabel!
	
	//*****************************************************************
	// MARK: - Properties
	//*****************************************************************
	
	var probabilityInt = 0
	
	//*****************************************************************
	// MARK: - VC Life Cycle
	//*****************************************************************
	
    override func viewDidLoad() {
        super.viewDidLoad()
				probability()
				setUI()
    }
	
	//*****************************************************************
	// MARK: - Methods
	//*****************************************************************

	func probability() {
		
		let age = UserDefaults.standard.string(forKey: "age") ?? ""
		let ageInt = Int(age)
		print("el valor de ageInt es de \(ageInt)")
		let genre = UserDefaults.standard.bool(forKey: "genre")
		let headache = UserDefaults.standard.bool(forKey: "headache")
		let alcohol = UserDefaults.standard.bool(forKey: "alcohol") 
		
		// si el usuario tiene entre 20 a 30 años suma 25 puntos en probabilidaddo
		if (20...30).contains(ageInt ?? 0) {
			probabilityInt += 25
			probabilityLabel.text = String(probabilityInt)
		} else {
			print("x is not in range 20-30")
		}

		// si el usuario es mujer suma 25 puntos en probabilidad
		if genre == true {
			probabilityInt += 25
			probabilityLabel.text = String(probabilityInt)
		}
		
		// si el usuario tiene habituales dolores de cabeaza suma 25 puntos en probabilidad
		if headache == true {
			probabilityInt += 25
			probabilityLabel.text = String(probabilityInt)
		}
		
		// si el usuario consume habitualmente alcohol suma 25 puntos en probabilidad
		if alcohol == true {
			probabilityInt += 25
			probabilityLabel.text = String(probabilityInt)
		}
		
	}
	
	func setUI() {
		let name = UserDefaults.standard.string(forKey: "name") ?? ""
		messageName.text = "\(name), tienes un"
		let probabilityString = String(probabilityInt)
		probabilityLabel.text = "\(probabilityString)%"
		messageBodyLabel.text = "de probablidades de tener Síndrome de Kann"
	}

}

