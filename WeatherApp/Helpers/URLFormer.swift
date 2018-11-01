//
//  URLFormer.swift
//  WeatherApp
//
//  Created by macos on 10/28/18.
//  Copyright © 2018 macos. All rights reserved.
//

import Foundation

enum Cities: Int {
    case VelikoTarnovo = 46650
    case Sofia = 51097
    case Burgas = 47424
    case Plovdiv = 49959
    case Kardjali = 43604
    
    public init?(_ stringEnum: String){
        switch stringEnum {
        case "Veliko Tarnovo":
            self = .VelikoTarnovo
        case "Sofia":
            self = .Sofia
        case "Burgas":
            self = .Burgas
        case "Plovdiv":
            self = .Plovdiv
        case "Kardjali":
            self = .Kardjali
        default:
            return nil
        }
    }
}

class URLFormer {
    static let apiDomain: String = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/"
    static let apiKey: String = "XZnF5mu5rqYJOVMNhy7l8xgSHPHYqwPd"
    static let language: String = "en-us"
    static let details: Bool = false
    static let metrics: Bool = true
    
    private static func formUrl(cityId: Int) -> String {
        let formedApiURL = "\(self.apiDomain)\(cityId)?apikey=\(self.apiKey)&language=\(self.language)&details=\(self.details)&metric=\(self.metrics)"
        
        return formedApiURL
    }
    
    public static func formUrl(chosenCity: Cities) -> String {
        let formedApiURL = formUrl(cityId: chosenCity.rawValue)
        return formedApiURL
    }
}
