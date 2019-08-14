//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Ruslan Latfulin on 8/6/19.
//  Copyright © 2019 Ruslan Latfulin. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let reustaurantName = [
        "Burger Heroes", "Kitchen", "Bonsai",
        "Дастархан", "Индокитай", "X.O",
        "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
         "Классик", "Love&Life", "Шок", "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return reustaurantName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = reustaurantName[indexPath.row]
        cell.imageView?.image = UIImage(named: reustaurantName[indexPath.row])
        cell.imageView?.layer.cornerRadius =  cell.frame.size.height * 0.5
        cell.imageView?.clipsToBounds = true

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
