//
//  LanguageDetail.swift
//  MobileSoftwareBook
//
//  Created by Furkan Mehmet Turgut on 12.12.2021.
//

import Foundation
import UIKit

class MobileLanguage {
    
    var languageName : String
    var languageYear : String
    var languageImage : UIImage
    
    
    init(langName:String,langYear:String,langImage:UIImage) {
        languageName = langName
        languageYear = langYear
        languageImage = langImage
    }
    
    
}
