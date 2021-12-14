//
//  detailViewController.swift
//  MobileSoftwareBook
//
//  Created by Furkan Mehmet Turgut on 12.12.2021.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var chosenLanguage : MobileLanguage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labelName.text = chosenLanguage?.languageName
        labelYear.text = chosenLanguage?.languageYear
        imageView.image = chosenLanguage?.languageImage
    }
    



}
