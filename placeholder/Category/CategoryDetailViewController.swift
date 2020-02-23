//
//  CategoryDetailViewController.swift
//  placeholder
//
//  Created by Russell Ong on 23/2/20.
//  Copyright © 2020 h4h. All rights reserved.
//

import UIKit

class CategoryDetailViewController: UIViewController,UITableViewDelegate
, UITableViewDataSource {
    @IBOutlet weak var detailTableView: UITableView!
    var vendors: [GetVendorQuery.Data.Vendor?] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vendors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath)
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNetwork()
        // Do any additional setup after loading the view.
    }
    
    func setupNetwork(){
        Network.shared.apollo.fetch(query: GetVendorQuery()) { result in
            switch result {
            case .success(let graphQLResult):
//                print(graphQLResult.data?.vendor?[0]?.name)
                guard let results = graphQLResult.data?.vendor else {
                    return
                }
                self.vendors = results
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
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
