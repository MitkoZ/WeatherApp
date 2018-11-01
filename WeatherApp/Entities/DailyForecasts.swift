/*
 Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar
 
 */

import Foundation
struct DailyForecasts : Codable {
    let date : String?
    let epochDate : Int?
    let temperature : Temperature?
    let day : Day?
    let night : Night?
    let sources : [String]?
    let mobileLink : String?
    let link : String?
    
    enum CodingKeys: String, CodingKey {
        
        case date = "Date"
        case epochDate = "EpochDate"
        case temperature = "Temperature"
        case day = "Day"
        case night = "Night"
        case sources = "Sources"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        epochDate = try values.decodeIfPresent(Int.self, forKey: .epochDate)
        temperature = try values.decodeIfPresent(Temperature.self, forKey: .temperature)
        day = try values.decodeIfPresent(Day.self, forKey: .day)
        night = try values.decodeIfPresent(Night.self, forKey: .night)
        sources = try values.decodeIfPresent([String].self, forKey: .sources)
        mobileLink = try values.decodeIfPresent(String.self, forKey: .mobileLink)
        link = try values.decodeIfPresent(String.self, forKey: .link)
    }
    
}


