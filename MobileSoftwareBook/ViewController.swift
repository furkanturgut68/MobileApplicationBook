//
//  ViewController.swift
//  MobileSoftwareBook
//
//  Created by Furkan Mehmet Turgut on 12.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mobileLanguage = [MobileLanguage]()
    var mobileDetail : MobileLanguage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let flutter = MobileLanguage(langName: "Flutter", langYear: "2017", langImage: UIImage(named: "flutter")!)
        
        let swift = MobileLanguage(langName: "Swift", langYear: "2014", langImage: UIImage(named: "swift")!)
        
        let react = MobileLanguage(langName: "React Native", langYear: "2015", langImage: UIImage(named: "reactnative")!)
        
        let xamarin = MobileLanguage(langName: "Xamarin", langYear: "2011", langImage: UIImage(named: "xamarin")!)
        
        let ionic = MobileLanguage(langName: "Ionic", langYear: "2013", langImage: UIImage(named: "ionic")!)
        
        let kotlin = MobileLanguage(langName: "Kotlin", langYear: "2011", langImage: UIImage(named: "kotlin")!)
        
        mobileLanguage.append(swift)
        mobileLanguage.append(flutter)
        mobileLanguage.append(react)
        mobileLanguage.append(xamarin)
        mobileLanguage.append(ionic)
        mobileLanguage.append(kotlin)
        
        navigationItem.title = "Mobile Software Language"
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mobileLanguage[indexPath.row].languageName
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mobileLanguage.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mobileDetail = mobileLanguage[indexPath.row]
        performSegue(withIdentifier: "toDetailController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailController"{
            let detination = segue.destination as! detailViewController
            detination.chosenLanguage = mobileDetail
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            mobileLanguage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

}

