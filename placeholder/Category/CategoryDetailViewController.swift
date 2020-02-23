//
//  CategoryDetailViewController.swift
//  placeholder
//
//  Created by Russell Ong on 23/2/20.
//  Copyright © 2020 h4h. All rights reserved.
//

import UIKit

struct cardView{
    
}

class CategoryDetailViewController: UIViewController,UITableViewDelegate
, UITableViewDataSource {
    @IBOutlet weak var detailTableView: UITableView!
    let transportItems = ["Bus","Helicopter","Truck","Boat","Bicycle","Motorcycle","Plane","Train","Car","Scooter","Caravan"]


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transportItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath)

        cell.textLabel?.text = transportItems[indexPath.row]
            
//        let imageName = UIImage(named: transportItems[indexPath.row])
//        cell.imageView?.image = imageName

        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }

     */
    @IBAction func onClick(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
