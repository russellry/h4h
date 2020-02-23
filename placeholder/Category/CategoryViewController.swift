//
//  FirstViewController.swift
//  placeholder
//
//  Created by Russell Ong on 22/2/20.
//  Copyright © 2020 h4h. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Network.shared.apollo.fetch(query: GetDonorQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
//            print(graphQLResult.data?.donor)
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }

    }


    @IBAction func onClickFoodCategory(_ sender: Any) {
        performSegue(withIdentifier: "toCategoryDetail", sender: nil)
        
    }
}

