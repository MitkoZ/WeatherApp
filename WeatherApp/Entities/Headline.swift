/*
 Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar
 
 */

import Foundation
struct Headline : Codable {
    let effectiveDate : String?
    let effectiveEpochDate : Int?
    let severity : Int?
    let text : String?
    let category : String?
    let endDate : String?
    let endEpochDate : Int?
    let mobileLink : String?
    let link : String?
    
    enum CodingKeys: String, CodingKey {
        
        case effectiveDate = "EffectiveDate"
        case effectiveEpochDate = "EffectiveEpochDate"
        case severity = "Severity"
        case text = "Text"
        case category = "Category"
        case endDate = "EndDate"
        case endEpochDate = "EndEpochDate"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        effectiveDate = try values.decodeIfPresent(String.self, forKey: .effectiveDate)
        effectiveEpochDate = try values.decodeIfPresent(Int.self, forKey: .effectiveEpochDate)
        severity = try values.decodeIfPresent(Int.self, forKey: .severity)
        text = try values.decodeIfPresent(String.self, forKey: .text)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        endDate = try values.decodeIfPresent(String.self, forKey: .endDate)
        endEpochDate = try values.decodeIfPresent(Int.self, forKey: .endEpochDate)
        mobileLink = try values.decodeIfPresent(String.self, forKey: .mobileLink)
        link = try values.decodeIfPresent(String.self, forKey: .link)
    }
    
}


