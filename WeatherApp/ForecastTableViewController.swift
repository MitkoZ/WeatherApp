//
//  ViewController.swift
//  WeatherApp
//
//  Created by macos on 10/24/18.
//  Copyright © 2018 macos. All rights reserved.
//

import UIKit

var dataContainer: Json4Swift_Base? = nil;
class ForecastViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: URLFormer.formUrl(chosenCity: Cities(cityIndex)!))
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do {
                let jsonDecoder = JSONDecoder()
                dataContainer = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                DispatchQueue.main.async {
                    self.view.reloadInputViews()
                    self.title = dataContainer?.headline?.text
                }
            }
            catch let parseError as NSError {
                print(parseError)
            }
        }
        
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dailyForecast = dataContainer?.dailyForecasts![indexPath.section]
        switch indexPath.row {
        case 0:
            cell?.textLabel?.text = "Minimum temperature: \(dailyForecast?.temperature!.minimum!.value ?? 0)\(dailyForecast?.temperature!.minimum!.unit ?? "C")"
        case 1:
            cell?.textLabel?.text = "Maximum temperature: \(dailyForecast?.temperature!.maximum!.value ?? 0)\(dailyForecast?.temperature!.maximum!.unit ?? "C")"
        case 2:
            cell?.textLabel?.text = "Day: \(dailyForecast?.day?.iconPhrase ?? "")"
        case 3:
            cell?.textLabel?.text = "Night: \(dailyForecast?.night?.iconPhrase ?? "")"
        default:
            break
            
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataContainer == nil ? 5 : (dataContainer?.dailyForecasts!.count)!
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataContainer?.dailyForecasts![section].date
    }
}


