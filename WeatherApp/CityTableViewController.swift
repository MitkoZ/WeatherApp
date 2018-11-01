//
//  CityTableViewController.swift
//  WeatherApp
//
//  Created by macos on 10/28/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

var cityIndex: String  = ""

class CityTableViewController: UITableViewController {
    let citiesList = ["Veliko Tarnovo", "Sofia", "Burgas", "Plovdiv", "Kardjali"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cityCell.textLabel?.text = citiesList[indexPath.row]
        
        return cityCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cityIndex = citiesList[indexPath.row]
        performSegue(withIdentifier: "CityVCToForecastVCSegue", sender: self)
    }
}

